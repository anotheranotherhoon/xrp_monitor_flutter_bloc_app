// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContentState<T> {

 List<T> get items; String? get cursor; bool get loading; bool get hasMore; String get error;
/// Create a copy of ContentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentStateCopyWith<T, ContentState<T>> get copyWith => _$ContentStateCopyWithImpl<T, ContentState<T>>(this as ContentState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentState<T>&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),cursor,loading,hasMore,error);

@override
String toString() {
  return 'ContentState<$T>(items: $items, cursor: $cursor, loading: $loading, hasMore: $hasMore, error: $error)';
}


}

/// @nodoc
abstract mixin class $ContentStateCopyWith<T,$Res>  {
  factory $ContentStateCopyWith(ContentState<T> value, $Res Function(ContentState<T>) _then) = _$ContentStateCopyWithImpl;
@useResult
$Res call({
 List<T> items, String? cursor, bool loading, bool hasMore, String error
});




}
/// @nodoc
class _$ContentStateCopyWithImpl<T,$Res>
    implements $ContentStateCopyWith<T, $Res> {
  _$ContentStateCopyWithImpl(this._self, this._then);

  final ContentState<T> _self;
  final $Res Function(ContentState<T>) _then;

/// Create a copy of ContentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? cursor = freezed,Object? loading = null,Object? hasMore = null,Object? error = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContentState].
extension ContentStatePatterns<T> on ContentState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentState<T> value)  $default,){
final _that = this;
switch (_that) {
case _ContentState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _ContentState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items,  String? cursor,  bool loading,  bool hasMore,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentState() when $default != null:
return $default(_that.items,_that.cursor,_that.loading,_that.hasMore,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items,  String? cursor,  bool loading,  bool hasMore,  String error)  $default,) {final _that = this;
switch (_that) {
case _ContentState():
return $default(_that.items,_that.cursor,_that.loading,_that.hasMore,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items,  String? cursor,  bool loading,  bool hasMore,  String error)?  $default,) {final _that = this;
switch (_that) {
case _ContentState() when $default != null:
return $default(_that.items,_that.cursor,_that.loading,_that.hasMore,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ContentState<T> implements ContentState<T> {
  const _ContentState({required final  List<T> items, this.cursor, this.loading = false, this.hasMore = true, this.error = ''}): _items = items;
  

 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? cursor;
@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  String error;

/// Create a copy of ContentState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentStateCopyWith<T, _ContentState<T>> get copyWith => __$ContentStateCopyWithImpl<T, _ContentState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentState<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),cursor,loading,hasMore,error);

@override
String toString() {
  return 'ContentState<$T>(items: $items, cursor: $cursor, loading: $loading, hasMore: $hasMore, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ContentStateCopyWith<T,$Res> implements $ContentStateCopyWith<T, $Res> {
  factory _$ContentStateCopyWith(_ContentState<T> value, $Res Function(_ContentState<T>) _then) = __$ContentStateCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, String? cursor, bool loading, bool hasMore, String error
});




}
/// @nodoc
class __$ContentStateCopyWithImpl<T,$Res>
    implements _$ContentStateCopyWith<T, $Res> {
  __$ContentStateCopyWithImpl(this._self, this._then);

  final _ContentState<T> _self;
  final $Res Function(_ContentState<T>) _then;

/// Create a copy of ContentState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? cursor = freezed,Object? loading = null,Object? hasMore = null,Object? error = null,}) {
  return _then(_ContentState<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as String?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
