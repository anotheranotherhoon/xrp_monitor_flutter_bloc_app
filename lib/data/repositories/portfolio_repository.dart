import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xrp_monitor_flutter_bloc_app/core/network/api_client.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

class PortfolioRepository {
  PortfolioRepository(this._api);

  final ApiClient _api;
  static const String _quantityKey = 'portfolioQuantity';
  static const String _averagePriceKey = 'portfolioAveragePrice';
  static const String _memoKey = 'portfolioMemo';
  static const String _pendingSyncKey = 'portfolioPendingSync';

  Future<PortfolioResult> load() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      if (prefs.getBool(_pendingSyncKey) ?? false) {
        final Portfolio cached = _readCache(prefs);
        await _saveRemote(cached);
        await prefs.setBool(_pendingSyncKey, false);
      }
      final Map<String, dynamic> response = await _api.get('/xrp/holding');
      final dynamic data = ApiClient.resultData(response);
      final Portfolio portfolio =
          data is Map<String, dynamic>
              ? Portfolio.fromJson(data)
              : const Portfolio();
      await _writeCache(prefs, portfolio, pendingSync: false);
      return PortfolioResult(portfolio: portfolio);
    } on DioException catch (error) {
      if (error.response?.statusCode == 404) {
        return const PortfolioResult(portfolio: Portfolio());
      }
      return PortfolioResult(
        portfolio: _readCache(prefs),
        isOffline: true,
        hasPendingSync: prefs.getBool(_pendingSyncKey) ?? false,
      );
    }
  }

  Future<PortfolioResult> save(Portfolio portfolio) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await _writeCache(prefs, portfolio, pendingSync: true);
    try {
      final Portfolio saved = await _saveRemote(portfolio);
      await _writeCache(prefs, saved, pendingSync: false);
      return PortfolioResult(portfolio: saved);
    } on DioException {
      return PortfolioResult(
        portfolio: portfolio,
        isOffline: true,
        hasPendingSync: true,
      );
    }
  }

  Future<Portfolio> _saveRemote(Portfolio portfolio) async {
    final Map<String, dynamic> response = await _api.post(
      '/xrp/holding',
      data: <String, Object>{
        'hoQuantity': portfolio.quantity,
        'hoAveragePrice': portfolio.averagePrice,
        'hoMemo': portfolio.memo,
      },
    );
    return Portfolio.fromJson(
      ApiClient.resultData(response) as Map<String, dynamic>,
    );
  }

  Portfolio _readCache(SharedPreferences prefs) {
    return Portfolio(
      quantity: prefs.getDouble(_quantityKey) ?? 0,
      averagePrice: prefs.getDouble(_averagePriceKey) ?? 0,
      memo: prefs.getString(_memoKey) ?? '',
    );
  }

  Future<void> _writeCache(
    SharedPreferences prefs,
    Portfolio portfolio, {
    required bool pendingSync,
  }) async {
    await Future.wait<bool>(<Future<bool>>[
      prefs.setDouble(_quantityKey, portfolio.quantity),
      prefs.setDouble(_averagePriceKey, portfolio.averagePrice),
      prefs.setString(_memoKey, portfolio.memo),
      prefs.setBool(_pendingSyncKey, pendingSync),
    ]);
  }
}

class PortfolioResult {
  const PortfolioResult({
    required this.portfolio,
    this.isOffline = false,
    this.hasPendingSync = false,
  });

  final Portfolio portfolio;
  final bool isOffline;
  final bool hasPendingSync;
}
