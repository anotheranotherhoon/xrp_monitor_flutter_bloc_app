import 'package:shared_preferences/shared_preferences.dart';
import 'package:xrp_monitor_flutter_bloc_app/core/config/app_environment.dart';
import 'package:xrp_monitor_flutter_bloc_app/core/network/api_client.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

class PopupRepository {
  PopupRepository(this._api);

  final ApiClient _api;
  static bool _closedForSession = false;

  Future<List<PopupItem>> loadActive() async {
    final Map<String, dynamic> response = await _api.get('/popup/active');
    return ApiClient.resultList(
      response,
    ).cast<Map<String, dynamic>>().map(PopupItem.fromJson).take(10).toList();
  }

  String imageUrl(PopupItem popup) =>
      '${AppEnvironment.apiBaseUrl}/popup/${popup.id}/image';

  Future<bool> hiddenToday() async {
    if (_closedForSession) return true;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final DateTime now = DateTime.now();
    final String today = '${now.year}-${now.month}-${now.day}';
    return prefs.getString('popupHiddenDate') == today;
  }

  Future<void> hideToday() async {
    _closedForSession = true;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final DateTime now = DateTime.now();
    await prefs.setString(
      'popupHiddenDate',
      '${now.year}-${now.month}-${now.day}',
    );
  }

  void closeForSession() {
    _closedForSession = true;
  }
}
