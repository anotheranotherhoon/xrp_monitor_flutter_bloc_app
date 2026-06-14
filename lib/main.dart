import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/app.dart';
import 'package:xrp_monitor_flutter_bloc_app/core/network/api_client.dart';
import 'package:xrp_monitor_flutter_bloc_app/core/notifications/push_notification_service.dart';
import 'package:xrp_monitor_flutter_bloc_app/data/repositories/repositories.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/auth/auth_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final ApiClient apiClient = ApiClient();
  final PushNotificationService pushNotificationService =
      PushNotificationService(apiClient);
  await pushNotificationService.initialize();
  final AuthRepository authRepository = AuthRepository(
    apiClient,
    pushNotificationService,
  );
  await authRepository.restoreSession();

  runApp(
    RepositoryProvider<ApiClient>.value(
      value: apiClient,
      child: MultiRepositoryProvider(
        providers: <RepositoryProvider<dynamic>>[
          RepositoryProvider<AuthRepository>.value(value: authRepository),
          RepositoryProvider<MarketRepository>(
            create: (BuildContext context) => MarketRepository(apiClient),
          ),
          RepositoryProvider<ContentRepository>(
            create: (BuildContext context) => ContentRepository(apiClient),
          ),
          RepositoryProvider<PortfolioRepository>(
            create: (BuildContext context) => PortfolioRepository(apiClient),
          ),
          RepositoryProvider<PopupRepository>(
            create: (BuildContext context) => PopupRepository(apiClient),
          ),
        ],
        child: BlocProvider<AuthBloc>(
          create:
              (BuildContext context) =>
                  AuthBloc(authRepository)..add(const AuthSessionChecked()),
          child: const XrpMonitorApp(),
        ),
      ),
    ),
  );
}
