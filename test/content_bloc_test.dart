import 'package:flutter_test/flutter_test.dart';
import 'package:xrp_monitor_flutter_bloc_app/data/repositories/repositories.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/content/content_bloc.dart';

void main() {
  test('ContentBloc은 명시적 타입의 페이지 결과를 상태에 반영한다', () async {
    Future<ContentPage<String>> loader(String? cursor) async {
      return const ContentPage<String>(<String>['XRP'], 'next');
    }

    final ContentBloc<String> bloc = ContentBloc<String>(loader);

    bloc.add(const ContentRequested());
    await expectLater(
      bloc.stream,
      emitsInOrder(<Matcher>[
        isA<ContentState<String>>().having(
          (ContentState<String> state) => state.loading,
          'loading',
          true,
        ),
        isA<ContentState<String>>()
            .having(
              (ContentState<String> state) => state.items,
              'items',
              <String>['XRP'],
            )
            .having(
              (ContentState<String> state) => state.cursor,
              'cursor',
              'next',
            ),
      ]),
    );

    await bloc.close();
  });
}
