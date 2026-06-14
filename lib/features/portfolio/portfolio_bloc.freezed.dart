// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PortfolioState {

 Portfolio get portfolio; bool get loading; bool get isOffline; bool get hasPendingSync; String get error;
/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioStateCopyWith<PortfolioState> get copyWith => _$PortfolioStateCopyWithImpl<PortfolioState>(this as PortfolioState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioState&&(identical(other.portfolio, portfolio) || other.portfolio == portfolio)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.hasPendingSync, hasPendingSync) || other.hasPendingSync == hasPendingSync)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,portfolio,loading,isOffline,hasPendingSync,error);

@override
String toString() {
  return 'PortfolioState(portfolio: $portfolio, loading: $loading, isOffline: $isOffline, hasPendingSync: $hasPendingSync, error: $error)';
}


}

/// @nodoc
abstract mixin class $PortfolioStateCopyWith<$Res>  {
  factory $PortfolioStateCopyWith(PortfolioState value, $Res Function(PortfolioState) _then) = _$PortfolioStateCopyWithImpl;
@useResult
$Res call({
 Portfolio portfolio, bool loading, bool isOffline, bool hasPendingSync, String error
});


$PortfolioCopyWith<$Res> get portfolio;

}
/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._self, this._then);

  final PortfolioState _self;
  final $Res Function(PortfolioState) _then;

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? portfolio = null,Object? loading = null,Object? isOffline = null,Object? hasPendingSync = null,Object? error = null,}) {
  return _then(_self.copyWith(
portfolio: null == portfolio ? _self.portfolio : portfolio // ignore: cast_nullable_to_non_nullable
as Portfolio,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,isOffline: null == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool,hasPendingSync: null == hasPendingSync ? _self.hasPendingSync : hasPendingSync // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioCopyWith<$Res> get portfolio {
  
  return $PortfolioCopyWith<$Res>(_self.portfolio, (value) {
    return _then(_self.copyWith(portfolio: value));
  });
}
}


/// Adds pattern-matching-related methods to [PortfolioState].
extension PortfolioStatePatterns on PortfolioState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PortfolioState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PortfolioState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PortfolioState value)  $default,){
final _that = this;
switch (_that) {
case _PortfolioState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PortfolioState value)?  $default,){
final _that = this;
switch (_that) {
case _PortfolioState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Portfolio portfolio,  bool loading,  bool isOffline,  bool hasPendingSync,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PortfolioState() when $default != null:
return $default(_that.portfolio,_that.loading,_that.isOffline,_that.hasPendingSync,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Portfolio portfolio,  bool loading,  bool isOffline,  bool hasPendingSync,  String error)  $default,) {final _that = this;
switch (_that) {
case _PortfolioState():
return $default(_that.portfolio,_that.loading,_that.isOffline,_that.hasPendingSync,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Portfolio portfolio,  bool loading,  bool isOffline,  bool hasPendingSync,  String error)?  $default,) {final _that = this;
switch (_that) {
case _PortfolioState() when $default != null:
return $default(_that.portfolio,_that.loading,_that.isOffline,_that.hasPendingSync,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _PortfolioState implements PortfolioState {
  const _PortfolioState({this.portfolio = const Portfolio(), this.loading = false, this.isOffline = false, this.hasPendingSync = false, this.error = ''});
  

@override@JsonKey() final  Portfolio portfolio;
@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool isOffline;
@override@JsonKey() final  bool hasPendingSync;
@override@JsonKey() final  String error;

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioStateCopyWith<_PortfolioState> get copyWith => __$PortfolioStateCopyWithImpl<_PortfolioState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortfolioState&&(identical(other.portfolio, portfolio) || other.portfolio == portfolio)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.isOffline, isOffline) || other.isOffline == isOffline)&&(identical(other.hasPendingSync, hasPendingSync) || other.hasPendingSync == hasPendingSync)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,portfolio,loading,isOffline,hasPendingSync,error);

@override
String toString() {
  return 'PortfolioState(portfolio: $portfolio, loading: $loading, isOffline: $isOffline, hasPendingSync: $hasPendingSync, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PortfolioStateCopyWith<$Res> implements $PortfolioStateCopyWith<$Res> {
  factory _$PortfolioStateCopyWith(_PortfolioState value, $Res Function(_PortfolioState) _then) = __$PortfolioStateCopyWithImpl;
@override @useResult
$Res call({
 Portfolio portfolio, bool loading, bool isOffline, bool hasPendingSync, String error
});


@override $PortfolioCopyWith<$Res> get portfolio;

}
/// @nodoc
class __$PortfolioStateCopyWithImpl<$Res>
    implements _$PortfolioStateCopyWith<$Res> {
  __$PortfolioStateCopyWithImpl(this._self, this._then);

  final _PortfolioState _self;
  final $Res Function(_PortfolioState) _then;

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? portfolio = null,Object? loading = null,Object? isOffline = null,Object? hasPendingSync = null,Object? error = null,}) {
  return _then(_PortfolioState(
portfolio: null == portfolio ? _self.portfolio : portfolio // ignore: cast_nullable_to_non_nullable
as Portfolio,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,isOffline: null == isOffline ? _self.isOffline : isOffline // ignore: cast_nullable_to_non_nullable
as bool,hasPendingSync: null == hasPendingSync ? _self.hasPendingSync : hasPendingSync // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PortfolioState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PortfolioCopyWith<$Res> get portfolio {
  
  return $PortfolioCopyWith<$Res>(_self.portfolio, (value) {
    return _then(_self.copyWith(portfolio: value));
  });
}
}

// dart format on
