import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xrp_monitor_flutter_bloc_app/data/repositories/repositories.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

part 'popup_bloc.freezed.dart';

sealed class PopupEvent extends Equatable {
  const PopupEvent();
  @override
  List<Object?> get props => <Object?>[];
}

final class PopupRequested extends PopupEvent {
  const PopupRequested();
}

final class PopupClosed extends PopupEvent {
  const PopupClosed({this.hideToday = false});
  final bool hideToday;
  @override
  List<Object?> get props => <Object?>[hideToday];
}

@freezed
abstract class PopupState with _$PopupState {
  const factory PopupState({
    @Default(<PopupItem>[]) List<PopupItem> items,
    @Default(false) bool visible,
  }) = _PopupState;
}

class PopupBloc extends Bloc<PopupEvent, PopupState> {
  PopupBloc(this._repository) : super(const PopupState()) {
    on<PopupRequested>((PopupRequested event, Emitter<PopupState> emit) async {
      if (await _repository.hiddenToday()) return;
      try {
        final List<PopupItem> items = await _repository.loadActive();
        emit(PopupState(items: items, visible: items.isNotEmpty));
      } catch (_) {}
    });
    on<PopupClosed>((PopupClosed event, Emitter<PopupState> emit) async {
      if (event.hideToday) {
        await _repository.hideToday();
      } else {
        _repository.closeForSession();
      }
      emit(PopupState(items: state.items));
    });
  }
  final PopupRepository _repository;
}
