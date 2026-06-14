import 'package:xrp_monitor_flutter_bloc_app/core/network/api_client.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

class ContentPage<T> {
  const ContentPage(this.items, this.nextCursor);

  final List<T> items;
  final String? nextCursor;
}

class ContentRepository {
  ContentRepository(this._api);

  final ApiClient _api;

  Future<ContentPage<Article>> getCryptoArticles(String? cursor) async {
    final Map<String, dynamic> response = await _api.get(
      '/crypto/news/xrp',
      query: <String, Object>{'cursorId': cursor ?? '-1', 'perPage': 10},
    );
    return ContentPage<Article>(
      ApiClient.resultList(
        response,
      ).cast<Map<String, dynamic>>().map(Article.fromCryptoJson).toList(),
      ApiClient.nextCursor(response),
    );
  }

  Future<ContentPage<Article>> getNews(String? cursor) async {
    final Map<String, dynamic> response = await _api.get(
      '/news/xrp/cursor',
      query: <String, Object>{'cursorId': cursor ?? '-1', 'perPage': 10},
    );
    return ContentPage<Article>(
      ApiClient.resultList(
        response,
      ).cast<Map<String, dynamic>>().map(Article.fromNewsJson).toList(),
      ApiClient.nextCursor(response),
    );
  }

  Future<ContentPage<VideoItem>> getVideos(String? cursor) async {
    final Map<String, dynamic> response = await _api.get(
      '/youtube/search',
      query: <String, Object>{
        'cursorId': cursor ?? '-1',
        'perPage': 10,
        'q': 'XRP Ripple',
      },
    );
    return ContentPage<VideoItem>(
      ApiClient.resultList(
        response,
      ).cast<Map<String, dynamic>>().map(VideoItem.fromJson).toList(),
      ApiClient.nextCursor(response),
    );
  }
}
