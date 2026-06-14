import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:xrp_monitor_flutter_bloc_app/core/config/app_environment.dart';

class ApiClient {
  ApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: AppEnvironment.apiBaseUrl,
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 20),
          headers: const <String, String>{'Accept': 'application/json'},
        ),
      ) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (
          RequestOptions options,
          RequestInterceptorHandler handler,
        ) async {
          final String? token = await _storage.read(key: _accessTokenKey);
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
      ),
    );
  }

  static const String _accessTokenKey = 'accessToken';
  static const String _refreshTokenKey = 'refreshToken';
  static const FlutterSecureStorage _storage = FlutterSecureStorage();
  final Dio _dio;

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? query,
  }) async {
    final Response<Map<String, dynamic>> response = await _dio
        .get<Map<String, dynamic>>(path, queryParameters: query);
    return response.data ?? const <String, dynamic>{};
  }

  Future<Map<String, dynamic>> post(String path, {Object? data}) async {
    final Response<Map<String, dynamic>> response = await _dio
        .post<Map<String, dynamic>>(path, data: data);
    return response.data ?? const <String, dynamic>{};
  }

  Future<Map<String, dynamic>> delete(String path, {Object? data}) async {
    final Response<Map<String, dynamic>> response = await _dio
        .delete<Map<String, dynamic>>(path, data: data);
    return response.data ?? const <String, dynamic>{};
  }

  Future<void> saveTokens(String accessToken, String refreshToken) async {
    await _storage.write(key: _accessTokenKey, value: accessToken);
    await _storage.write(key: _refreshTokenKey, value: refreshToken);
  }

  Future<String?> readAccessToken() => _storage.read(key: _accessTokenKey);

  Future<void> clearTokens() => _storage.deleteAll();

  static dynamic resultData(Map<String, dynamic> response) {
    final dynamic result = response['result'];
    if (result is Map<String, dynamic> && result.containsKey('data')) {
      return result['data'];
    }
    return result;
  }

  static List<dynamic> resultList(Map<String, dynamic> response) {
    final dynamic result = response['result'];
    if (result is Map<String, dynamic> && result['list'] is List) {
      return result['list'] as List<dynamic>;
    }
    return const <dynamic>[];
  }

  static String? nextCursor(Map<String, dynamic> response) {
    final dynamic result = response['result'];
    return result is Map<String, dynamic>
        ? result['nextCursor']?.toString()
        : null;
  }
}
