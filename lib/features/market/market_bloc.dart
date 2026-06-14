import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:xrp_monitor_flutter_bloc_app/core/config/app_environment.dart';

part 'market_bloc.freezed.dart';

sealed class MarketEvent extends Equatable {
  const MarketEvent();
  @override
  List<Object?> get props => <Object?>[];
}

final class MarketConnected extends MarketEvent {
  const MarketConnected();
}

final class MarketPriceChanged extends MarketEvent {
  const MarketPriceChanged(this.price);
  final double price;
  @override
  List<Object?> get props => <Object?>[price];
}

final class MarketDisconnected extends MarketEvent {
  const MarketDisconnected();
}

@freezed
abstract class MarketState with _$MarketState {
  const factory MarketState({
    @Default(false) bool connected,
    @Default(0) double price,
  }) = _MarketState;
}

class MarketBloc extends Bloc<MarketEvent, MarketState> {
  MarketBloc() : super(const MarketState()) {
    on<MarketConnected>(
      (MarketConnected event, Emitter<MarketState> emit) =>
          emit(MarketState(connected: true, price: state.price)),
    );
    on<MarketPriceChanged>(
      (MarketPriceChanged event, Emitter<MarketState> emit) =>
          emit(MarketState(connected: true, price: event.price)),
    );
    on<MarketDisconnected>(
      (MarketDisconnected event, Emitter<MarketState> emit) =>
          emit(MarketState(price: state.price)),
    );
    _connect();
  }

  io.Socket? _socket;

  void _connect() {
    _socket = io.io(AppEnvironment.socketBaseUrl, <String, Object>{
      'transports': <String>['websocket'],
      'port': AppEnvironment.socketPort,
      'autoConnect': true,
    });
    _socket!
      ..onConnect((dynamic data) {
        add(const MarketConnected());
        _socket!.emit('subscribe-candles', <String, Object>{
          'market': 'KRW-XRP',
          'count': 50,
        });
      })
      ..on('realtime-ticker', (dynamic data) {
        final double? price = double.tryParse('${data?['trade_price']}');
        if (price != null) add(MarketPriceChanged(price));
      })
      ..onDisconnect((dynamic data) => add(const MarketDisconnected()));
  }

  @override
  Future<void> close() {
    _socket?.dispose();
    return super.close();
  }
}
