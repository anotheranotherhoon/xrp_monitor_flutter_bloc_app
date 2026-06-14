import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';
import 'package:xrp_monitor_flutter_bloc_app/presentation/widgets/popup_carousel_dialog.dart';

void main() {
  testWidgets('팝업 캐러셀에 전체 숨김과 닫기 버튼을 표시한다', (WidgetTester tester) async {
    bool closed = false;
    bool hiddenToday = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PopupCarouselDialog(
            popups: const <PopupItem>[
              PopupItem(id: 1, title: '첫 번째'),
              PopupItem(id: 2, title: '두 번째'),
            ],
            imageUrlBuilder: (PopupItem popup) => 'invalid://${popup.id}',
            onClose: () => closed = true,
            onHideToday: () => hiddenToday = true,
          ),
        ),
      ),
    );

    expect(find.text('오늘 하루 보지 않기'), findsOneWidget);
    expect(find.text('닫기'), findsOneWidget);
    expect(find.text('1 / 2'), findsOneWidget);

    await tester.tap(find.text('닫기'));
    expect(closed, isTrue);

    await tester.tap(find.text('오늘 하루 보지 않기'));
    expect(hiddenToday, isTrue);
  });
}
