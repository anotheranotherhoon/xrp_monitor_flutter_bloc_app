// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarketState {

 bool get connected; double get price;
/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketStateCopyWith<MarketState> get copyWith => _$MarketStateCopyWithImpl<MarketState>(this as MarketState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketState&&(identical(other.connected, connected) || other.connected == connected)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,connected,price);

@override
String toString() {
  return 'MarketState(connected: $connected, price: $price)';
}


}

/// @nodoc
abstract mixin class $MarketStateCopyWith<$Res>  {
  factory $MarketStateCopyWith(MarketState value, $Res Function(MarketState) _then) = _$MarketStateCopyWithImpl;
@useResult
$Res call({
 bool connected, double price
});




}
/// @nodoc
class _$MarketStateCopyWithImpl<$Res>
    implements $MarketStateCopyWith<$Res> {
  _$MarketStateCopyWithImpl(this._self, this._then);

  final MarketState _self;
  final $Res Function(MarketState) _then;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connected = null,Object? price = null,}) {
  return _then(_self.copyWith(
connected: null == connected ? _self.connected : connected // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketState].
extension MarketStatePatterns on MarketState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketState value)  $default,){
final _that = this;
switch (_that) {
case _MarketState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketState value)?  $default,){
final _that = this;
switch (_that) {
case _MarketState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool connected,  double price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketState() when $default != null:
return $default(_that.connected,_that.price);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool connected,  double price)  $default,) {final _that = this;
switch (_that) {
case _MarketState():
return $default(_that.connected,_that.price);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool connected,  double price)?  $default,) {final _that = this;
switch (_that) {
case _MarketState() when $default != null:
return $default(_that.connected,_that.price);case _:
  return null;

}
}

}

/// @nodoc


class _MarketState implements MarketState {
  const _MarketState({this.connected = false, this.price = 0});
  

@override@JsonKey() final  bool connected;
@override@JsonKey() final  double price;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketStateCopyWith<_MarketState> get copyWith => __$MarketStateCopyWithImpl<_MarketState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketState&&(identical(other.connected, connected) || other.connected == connected)&&(identical(other.price, price) || other.price == price));
}


@override
int get hashCode => Object.hash(runtimeType,connected,price);

@override
String toString() {
  return 'MarketState(connected: $connected, price: $price)';
}


}

/// @nodoc
abstract mixin class _$MarketStateCopyWith<$Res> implements $MarketStateCopyWith<$Res> {
  factory _$MarketStateCopyWith(_MarketState value, $Res Function(_MarketState) _then) = __$MarketStateCopyWithImpl;
@override @useResult
$Res call({
 bool connected, double price
});




}
/// @nodoc
class __$MarketStateCopyWithImpl<$Res>
    implements _$MarketStateCopyWith<$Res> {
  __$MarketStateCopyWithImpl(this._self, this._then);

  final _MarketState _self;
  final $Res Function(_MarketState) _then;

/// Create a copy of MarketState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connected = null,Object? price = null,}) {
  return _then(_MarketState(
connected: null == connected ? _self.connected : connected // ignore: cast_nullable_to_non_nullable
as bool,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
