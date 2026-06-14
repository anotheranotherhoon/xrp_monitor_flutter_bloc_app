import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xrp_monitor_flutter_bloc_app/data/repositories/repositories.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

part 'portfolio_bloc.freezed.dart';

sealed class PortfolioEvent extends Equatable {
  const PortfolioEvent();
  @override
  List<Object?> get props => <Object?>[];
}

final class PortfolioRequested extends PortfolioEvent {
  const PortfolioRequested();
}

final class PortfolioSaved extends PortfolioEvent {
  const PortfolioSaved(this.portfolio);
  final Portfolio portfolio;
  @override
  List<Object?> get props => <Object?>[portfolio];
}

@freezed
abstract class PortfolioState with _$PortfolioState {
  const factory PortfolioState({
    @Default(Portfolio()) Portfolio portfolio,
    @Default(false) bool loading,
    @Default(false) bool isOffline,
    @Default(false) bool hasPendingSync,
    @Default('') String error,
  }) = _PortfolioState;
}

class PortfolioBloc extends Bloc<PortfolioEvent, PortfolioState> {
  PortfolioBloc(this._repository) : super(const PortfolioState()) {
    on<PortfolioRequested>((
      PortfolioRequested event,
      Emitter<PortfolioState> emit,
    ) async {
      emit(const PortfolioState(loading: true));
      try {
        final PortfolioResult result = await _repository.load();
        emit(
          PortfolioState(
            portfolio: result.portfolio,
            isOffline: result.isOffline,
            hasPendingSync: result.hasPendingSync,
          ),
        );
      } catch (error) {
        emit(PortfolioState(error: error.toString()));
      }
    });
    on<PortfolioSaved>((
      PortfolioSaved event,
      Emitter<PortfolioState> emit,
    ) async {
      emit(PortfolioState(portfolio: state.portfolio, loading: true));
      try {
        final PortfolioResult result = await _repository.save(event.portfolio);
        emit(
          PortfolioState(
            portfolio: result.portfolio,
            isOffline: result.isOffline,
            hasPendingSync: result.hasPendingSync,
          ),
        );
      } catch (error) {
        emit(
          PortfolioState(portfolio: state.portfolio, error: error.toString()),
        );
      }
    });
  }
  final PortfolioRepository _repository;
}
