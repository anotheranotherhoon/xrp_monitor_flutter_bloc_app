import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/auth/auth_bloc.dart';
import 'package:xrp_monitor_flutter_bloc_app/presentation/login_page.dart';
import 'package:xrp_monitor_flutter_bloc_app/presentation/main_shell.dart';

class XrpMonitorApp extends StatelessWidget {
  const XrpMonitorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XRP Monitor BLoC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00649B)),
        useMaterial3: true,
      ),
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (BuildContext context, AuthState state) {
          return state.status == AuthStatus.authenticated
              ? const MainShell()
              : const LoginPage();
        },
      ),
    );
  }
}
