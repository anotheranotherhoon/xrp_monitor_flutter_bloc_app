import 'package:xrp_monitor_flutter_bloc_app/core/network/api_client.dart';
import 'package:xrp_monitor_flutter_bloc_app/core/notifications/push_notification_service.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

class AuthRepository {
  AuthRepository(this._api, [this._pushNotificationService]);

  final ApiClient _api;
  final PushNotificationService? _pushNotificationService;
  User? currentUser;

  Future<void> restoreSession() async {
    final String? token = await _api.readAccessToken();
    if (token != null) {
      currentUser = const User(email: '', nickname: '사용자');
      await _pushNotificationService?.registerCurrentToken();
    }
  }

  Future<User> login(String email, String password) async {
    final Map<String, dynamic> response = await _api.post(
      '/auth/login',
      data: <String, String>{'email': email, 'password': password},
    );
    final Map<String, dynamic> data =
        ApiClient.resultData(response) as Map<String, dynamic>;
    await _api.saveTokens(
      data['accessToken']?.toString() ?? '',
      data['refreshToken']?.toString() ?? '',
    );
    currentUser = User.fromJson(
      data['user'] as Map<String, dynamic>? ?? <String, dynamic>{},
    );
    await _pushNotificationService?.registerCurrentToken();
    return currentUser!;
  }

  Future<void> signUp(String email, String password, String nickname) async {
    await _api.post(
      '/auth/register',
      data: <String, String>{
        'email': email,
        'password': password,
        'nickname': nickname,
      },
    );
  }

  Future<void> logout() async {
    await _pushNotificationService?.unregisterCurrentToken();
    try {
      await _api.post('/auth/logout');
    } catch (_) {
      // 로컬 토큰 삭제는 서버 로그아웃 실패와 무관하게 진행한다.
    }
    currentUser = null;
    await _api.clearTokens();
  }
}
