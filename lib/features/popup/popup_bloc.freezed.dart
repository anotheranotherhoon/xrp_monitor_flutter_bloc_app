// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PopupState {

 List<PopupItem> get items; bool get visible;
/// Create a copy of PopupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopupStateCopyWith<PopupState> get copyWith => _$PopupStateCopyWithImpl<PopupState>(this as PopupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopupState&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.visible, visible) || other.visible == visible));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),visible);

@override
String toString() {
  return 'PopupState(items: $items, visible: $visible)';
}


}

/// @nodoc
abstract mixin class $PopupStateCopyWith<$Res>  {
  factory $PopupStateCopyWith(PopupState value, $Res Function(PopupState) _then) = _$PopupStateCopyWithImpl;
@useResult
$Res call({
 List<PopupItem> items, bool visible
});




}
/// @nodoc
class _$PopupStateCopyWithImpl<$Res>
    implements $PopupStateCopyWith<$Res> {
  _$PopupStateCopyWithImpl(this._self, this._then);

  final PopupState _self;
  final $Res Function(PopupState) _then;

/// Create a copy of PopupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? visible = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PopupItem>,visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PopupState].
extension PopupStatePatterns on PopupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopupState value)  $default,){
final _that = this;
switch (_that) {
case _PopupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopupState value)?  $default,){
final _that = this;
switch (_that) {
case _PopupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PopupItem> items,  bool visible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopupState() when $default != null:
return $default(_that.items,_that.visible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PopupItem> items,  bool visible)  $default,) {final _that = this;
switch (_that) {
case _PopupState():
return $default(_that.items,_that.visible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PopupItem> items,  bool visible)?  $default,) {final _that = this;
switch (_that) {
case _PopupState() when $default != null:
return $default(_that.items,_that.visible);case _:
  return null;

}
}

}

/// @nodoc


class _PopupState implements PopupState {
  const _PopupState({final  List<PopupItem> items = const <PopupItem>[], this.visible = false}): _items = items;
  

 final  List<PopupItem> _items;
@override@JsonKey() List<PopupItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool visible;

/// Create a copy of PopupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopupStateCopyWith<_PopupState> get copyWith => __$PopupStateCopyWithImpl<_PopupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopupState&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.visible, visible) || other.visible == visible));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),visible);

@override
String toString() {
  return 'PopupState(items: $items, visible: $visible)';
}


}

/// @nodoc
abstract mixin class _$PopupStateCopyWith<$Res> implements $PopupStateCopyWith<$Res> {
  factory _$PopupStateCopyWith(_PopupState value, $Res Function(_PopupState) _then) = __$PopupStateCopyWithImpl;
@override @useResult
$Res call({
 List<PopupItem> items, bool visible
});




}
/// @nodoc
class __$PopupStateCopyWithImpl<$Res>
    implements _$PopupStateCopyWith<$Res> {
  __$PopupStateCopyWithImpl(this._self, this._then);

  final _PopupState _self;
  final $Res Function(_PopupState) _then;

/// Create a copy of PopupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? visible = null,}) {
  return _then(_PopupState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PopupItem>,visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
