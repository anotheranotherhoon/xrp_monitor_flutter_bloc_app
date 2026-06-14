import 'package:flutter_test/flutter_test.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

void main() {
  test('Portfolio 생성 모델은 문자열 숫자를 double로 변환한다', () {
    final Portfolio portfolio = Portfolio.fromJson(<String, dynamic>{
      'hoQuantity': '100.5',
      'hoAveragePrice': '750.25',
      'hoMemo': '장기 보유',
    });

    expect(portfolio.quantity, 100.5);
    expect(portfolio.averagePrice, 750.25);
    expect(portfolio.totalInvested, 75400.125);
  });

  test('VideoItem 생성 모델은 중첩 썸네일을 파싱한다', () {
    final VideoItem video = VideoItem.fromJson(<String, dynamic>{
      'yoTitle': 'XRP 영상',
      'yoChannelTitle': '채널',
      'yoVideoId': 'video-id',
      'thumbnails': <String, dynamic>{
        'high': <String, dynamic>{
          'url': 'https://example.com/high.jpg',
          'width': 480,
          'height': 360,
        },
      },
    });

    expect(video.title, 'XRP 영상');
    expect(video.thumbnailUrl, 'https://example.com/high.jpg');
  });
}
