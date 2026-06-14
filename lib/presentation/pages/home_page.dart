import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:xrp_monitor_flutter_bloc_app/data/repositories/repositories.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/auth/auth_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/market/market_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/popup/popup_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/presentation/widgets/popup_carousel_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PopupBloc, PopupState>(
      listenWhen:
          (PopupState previous, PopupState current) =>
              !previous.visible && current.visible,
      listener: (BuildContext context, PopupState state) {
        final PopupRepository repository = context.read<PopupRepository>();
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder:
              (BuildContext dialogContext) => PopupCarouselDialog(
                popups: state.items,
                imageUrlBuilder: repository.imageUrl,
                onClose: () {
                  context.read<PopupBloc>().add(const PopupClosed());
                  Navigator.of(dialogContext).pop();
                },
                onHideToday: () {
                  context.read<PopupBloc>().add(
                    const PopupClosed(hideToday: true),
                  );
                  Navigator.of(dialogContext).pop();
                },
              ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('XRP Monitor'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthLogoutRequested());
              },
              icon: const Icon(Icons.logout),
              tooltip: '로그아웃',
            ),
          ],
        ),
        body: BlocBuilder<MarketBloc, MarketState>(
          builder: (BuildContext context, MarketState state) {
            final String price =
                state.price == 0
                    ? '-'
                    : NumberFormat('#,##0.00').format(state.price);
            return ListView(
              padding: const EdgeInsets.all(20),
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.circle,
                              size: 12,
                              color:
                                  state.connected ? Colors.green : Colors.grey,
                            ),
                            const SizedBox(width: 8),
                            Text(state.connected ? '실시간 연결됨' : '연결 중'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text('XRP/KRW 현재가'),
                        const SizedBox(height: 8),
                        Text(
                          '$price원',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Card(
                  child: ListTile(
                    leading: Icon(Icons.architecture),
                    title: Text('BLoC Architecture'),
                    subtitle: Text(
                      'UI → Event → Bloc → Repository → API 흐름으로 구성했습니다.',
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
