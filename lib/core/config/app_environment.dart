import 'package:flutter/foundation.dart';

class AppEnvironment {
  static const bool isDev = !kReleaseMode;
  static const String productionApi = 'https://xrp-monitor.p-e.kr';

  static String get apiBaseUrl {
    if (!isDev) return productionApi;
    return defaultTargetPlatform == TargetPlatform.android
        ? 'http://10.0.2.2:3000'
        : 'http://localhost:3000';
  }

  static String get socketBaseUrl => apiBaseUrl;

  static int get socketPort =>
      Uri.parse(socketBaseUrl).port == 0
          ? (Uri.parse(socketBaseUrl).scheme == 'https' ? 443 : 80)
          : Uri.parse(socketBaseUrl).port;
}
