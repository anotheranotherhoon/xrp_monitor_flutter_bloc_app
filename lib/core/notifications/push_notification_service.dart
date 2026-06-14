import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:xrp_monitor_flutter_bloc_app/core/network/api_client.dart';
import 'package:xrp_monitor_flutter_bloc_app/firebase_options.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class PushNotificationService {
  PushNotificationService(this._apiClient);

  final ApiClient _apiClient;
  StreamSubscription<String>? _tokenSubscription;
  bool _initialized = false;

  Future<void> initialize() async {
    try {
      if (Firebase.apps.isEmpty) {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
      }
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
      _tokenSubscription = FirebaseMessaging.instance.onTokenRefresh.listen(
        _registerToken,
      );
      _initialized = true;
    } catch (error) {
      debugPrint('Firebase Messaging 초기화 생략: $error');
    }
  }

  Future<void> registerCurrentToken() async {
    try {
      if (!_initialized || await _apiClient.readAccessToken() == null) return;

      final NotificationSettings settings = await FirebaseMessaging.instance
          .requestPermission(alert: true, badge: true, sound: true);
      if (settings.authorizationStatus == AuthorizationStatus.denied) return;

      final String? token = await FirebaseMessaging.instance.getToken();
      if (token != null && token.isNotEmpty) {
        await _registerToken(token);
      }
    } catch (error) {
      debugPrint('FCM 토큰 등록 실패: $error');
    }
  }

  Future<void> unregisterCurrentToken() async {
    try {
      if (!_initialized) return;
      final String? token = await FirebaseMessaging.instance.getToken();
      if (token != null && token.isNotEmpty) {
        await _apiClient.delete(
          '/device-tokens',
          data: <String, String>{'token': token},
        );
      }
    } catch (error) {
      debugPrint('FCM 토큰 해제 실패: $error');
    }
  }

  Future<void> _registerToken(String token) async {
    try {
      if (await _apiClient.readAccessToken() == null) return;
      await _apiClient.post(
        '/device-tokens',
        data: <String, String>{'token': token, 'platform': _platform},
      );
    } catch (error) {
      debugPrint('FCM 토큰 갱신 실패: $error');
    }
  }

  String get _platform {
    if (kIsWeb) return 'WEB';
    return switch (defaultTargetPlatform) {
      TargetPlatform.iOS => 'IOS',
      _ => 'ANDROID',
    };
  }

  Future<void> dispose() async {
    await _tokenSubscription?.cancel();
  }
}
