import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xrp_monitor_flutter_bloc_app/data/repositories/repositories.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

part 'auth_bloc.freezed.dart';

enum AuthStatus { unknown, authenticated, unauthenticated, loading, failure }

sealed class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object?> get props => <Object?>[];
}

final class AuthSessionChecked extends AuthEvent {
  const AuthSessionChecked();
}

final class AuthLoginRequested extends AuthEvent {
  const AuthLoginRequested(this.email, this.password);
  final String email;
  final String password;
  @override
  List<Object?> get props => <Object?>[email, password];
}

final class AuthSignUpRequested extends AuthEvent {
  const AuthSignUpRequested(this.email, this.password, this.nickname);
  final String email;
  final String password;
  final String nickname;
  @override
  List<Object?> get props => <Object?>[email, password, nickname];
}

final class AuthLogoutRequested extends AuthEvent {
  const AuthLogoutRequested();
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.unknown) AuthStatus status,
    User? user,
    @Default('') String message,
  }) = _AuthState;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._repository) : super(const AuthState()) {
    on<AuthSessionChecked>((AuthSessionChecked event, Emitter<AuthState> emit) {
      final User? user = _repository.currentUser;
      emit(
        AuthState(
          status:
              user == null
                  ? AuthStatus.unauthenticated
                  : AuthStatus.authenticated,
          user: user,
        ),
      );
    });
    on<AuthLoginRequested>((
      AuthLoginRequested event,
      Emitter<AuthState> emit,
    ) async {
      emit(state.copyWith(status: AuthStatus.loading, message: ''));
      try {
        final User user = await _repository.login(event.email, event.password);
        emit(AuthState(status: AuthStatus.authenticated, user: user));
      } catch (error) {
        emit(
          AuthState(status: AuthStatus.failure, message: '로그인에 실패했습니다: $error'),
        );
      }
    });
    on<AuthSignUpRequested>((
      AuthSignUpRequested event,
      Emitter<AuthState> emit,
    ) async {
      emit(state.copyWith(status: AuthStatus.loading, message: ''));
      try {
        await _repository.signUp(event.email, event.password, event.nickname);
        final User user = await _repository.login(event.email, event.password);
        emit(AuthState(status: AuthStatus.authenticated, user: user));
      } catch (error) {
        emit(
          AuthState(
            status: AuthStatus.failure,
            message: '회원가입에 실패했습니다: $error',
          ),
        );
      }
    });
    on<AuthLogoutRequested>((
      AuthLogoutRequested event,
      Emitter<AuthState> emit,
    ) async {
      await _repository.logout();
      emit(const AuthState(status: AuthStatus.unauthenticated));
    });
  }

  final AuthRepository _repository;
}
