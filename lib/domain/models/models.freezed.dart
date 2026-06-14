// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

@JsonKey(name: 'meEmail') String get email;@JsonKey(name: 'meNickname') String get nickname;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,nickname);

@override
String toString() {
  return 'User(email: $email, nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'meEmail') String email,@JsonKey(name: 'meNickname') String nickname
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? nickname = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'meEmail')  String email, @JsonKey(name: 'meNickname')  String nickname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.email,_that.nickname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'meEmail')  String email, @JsonKey(name: 'meNickname')  String nickname)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.email,_that.nickname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'meEmail')  String email, @JsonKey(name: 'meNickname')  String nickname)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.email,_that.nickname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: 'meEmail') this.email = '', @JsonKey(name: 'meNickname') this.nickname = ''});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: 'meEmail') final  String email;
@override@JsonKey(name: 'meNickname') final  String nickname;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.email, email) || other.email == email)&&(identical(other.nickname, nickname) || other.nickname == nickname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,nickname);

@override
String toString() {
  return 'User(email: $email, nickname: $nickname)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'meEmail') String email,@JsonKey(name: 'meNickname') String nickname
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? nickname = null,}) {
  return _then(_User(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,nickname: null == nickname ? _self.nickname : nickname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Article {

 String get title; String get description; String get url; String get createdAt;
/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticleCopyWith<Article> get copyWith => _$ArticleCopyWithImpl<Article>(this as Article, _$identity);

  /// Serializes this Article to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Article&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,url,createdAt);

@override
String toString() {
  return 'Article(title: $title, description: $description, url: $url, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ArticleCopyWith<$Res>  {
  factory $ArticleCopyWith(Article value, $Res Function(Article) _then) = _$ArticleCopyWithImpl;
@useResult
$Res call({
 String title, String description, String url, String createdAt
});




}
/// @nodoc
class _$ArticleCopyWithImpl<$Res>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._self, this._then);

  final Article _self;
  final $Res Function(Article) _then;

/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? url = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Article].
extension ArticlePatterns on Article {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Article value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Article() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Article value)  $default,){
final _that = this;
switch (_that) {
case _Article():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Article value)?  $default,){
final _that = this;
switch (_that) {
case _Article() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String url,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Article() when $default != null:
return $default(_that.title,_that.description,_that.url,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String url,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _Article():
return $default(_that.title,_that.description,_that.url,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String url,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Article() when $default != null:
return $default(_that.title,_that.description,_that.url,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Article implements Article {
  const _Article({this.title = '', this.description = '', this.url = '', this.createdAt = ''});
  factory _Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String url;
@override@JsonKey() final  String createdAt;

/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleCopyWith<_Article> get copyWith => __$ArticleCopyWithImpl<_Article>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Article&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,url,createdAt);

@override
String toString() {
  return 'Article(title: $title, description: $description, url: $url, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) _then) = __$ArticleCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String url, String createdAt
});




}
/// @nodoc
class __$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(this._self, this._then);

  final _Article _self;
  final $Res Function(_Article) _then;

/// Create a copy of Article
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? url = null,Object? createdAt = null,}) {
  return _then(_Article(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$VideoItem {

@JsonKey(name: 'yoTitle') String get title;@JsonKey(name: 'yoChannelTitle') String get channel;@JsonKey(name: 'yoVideoId') String get videoId; YoutubeThumbnails? get thumbnails;
/// Create a copy of VideoItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoItemCopyWith<VideoItem> get copyWith => _$VideoItemCopyWithImpl<VideoItem>(this as VideoItem, _$identity);

  /// Serializes this VideoItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoItem&&(identical(other.title, title) || other.title == title)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.videoId, videoId) || other.videoId == videoId)&&(identical(other.thumbnails, thumbnails) || other.thumbnails == thumbnails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,channel,videoId,thumbnails);

@override
String toString() {
  return 'VideoItem(title: $title, channel: $channel, videoId: $videoId, thumbnails: $thumbnails)';
}


}

/// @nodoc
abstract mixin class $VideoItemCopyWith<$Res>  {
  factory $VideoItemCopyWith(VideoItem value, $Res Function(VideoItem) _then) = _$VideoItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'yoTitle') String title,@JsonKey(name: 'yoChannelTitle') String channel,@JsonKey(name: 'yoVideoId') String videoId, YoutubeThumbnails? thumbnails
});


$YoutubeThumbnailsCopyWith<$Res>? get thumbnails;

}
/// @nodoc
class _$VideoItemCopyWithImpl<$Res>
    implements $VideoItemCopyWith<$Res> {
  _$VideoItemCopyWithImpl(this._self, this._then);

  final VideoItem _self;
  final $Res Function(VideoItem) _then;

/// Create a copy of VideoItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? channel = null,Object? videoId = null,Object? thumbnails = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,videoId: null == videoId ? _self.videoId : videoId // ignore: cast_nullable_to_non_nullable
as String,thumbnails: freezed == thumbnails ? _self.thumbnails : thumbnails // ignore: cast_nullable_to_non_nullable
as YoutubeThumbnails?,
  ));
}
/// Create a copy of VideoItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YoutubeThumbnailsCopyWith<$Res>? get thumbnails {
    if (_self.thumbnails == null) {
    return null;
  }

  return $YoutubeThumbnailsCopyWith<$Res>(_self.thumbnails!, (value) {
    return _then(_self.copyWith(thumbnails: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoItem].
extension VideoItemPatterns on VideoItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoItem value)  $default,){
final _that = this;
switch (_that) {
case _VideoItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoItem value)?  $default,){
final _that = this;
switch (_that) {
case _VideoItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'yoTitle')  String title, @JsonKey(name: 'yoChannelTitle')  String channel, @JsonKey(name: 'yoVideoId')  String videoId,  YoutubeThumbnails? thumbnails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoItem() when $default != null:
return $default(_that.title,_that.channel,_that.videoId,_that.thumbnails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'yoTitle')  String title, @JsonKey(name: 'yoChannelTitle')  String channel, @JsonKey(name: 'yoVideoId')  String videoId,  YoutubeThumbnails? thumbnails)  $default,) {final _that = this;
switch (_that) {
case _VideoItem():
return $default(_that.title,_that.channel,_that.videoId,_that.thumbnails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'yoTitle')  String title, @JsonKey(name: 'yoChannelTitle')  String channel, @JsonKey(name: 'yoVideoId')  String videoId,  YoutubeThumbnails? thumbnails)?  $default,) {final _that = this;
switch (_that) {
case _VideoItem() when $default != null:
return $default(_that.title,_that.channel,_that.videoId,_that.thumbnails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoItem extends VideoItem {
  const _VideoItem({@JsonKey(name: 'yoTitle') this.title = '', @JsonKey(name: 'yoChannelTitle') this.channel = '', @JsonKey(name: 'yoVideoId') this.videoId = '', this.thumbnails}): super._();
  factory _VideoItem.fromJson(Map<String, dynamic> json) => _$VideoItemFromJson(json);

@override@JsonKey(name: 'yoTitle') final  String title;
@override@JsonKey(name: 'yoChannelTitle') final  String channel;
@override@JsonKey(name: 'yoVideoId') final  String videoId;
@override final  YoutubeThumbnails? thumbnails;

/// Create a copy of VideoItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoItemCopyWith<_VideoItem> get copyWith => __$VideoItemCopyWithImpl<_VideoItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoItem&&(identical(other.title, title) || other.title == title)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.videoId, videoId) || other.videoId == videoId)&&(identical(other.thumbnails, thumbnails) || other.thumbnails == thumbnails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,channel,videoId,thumbnails);

@override
String toString() {
  return 'VideoItem(title: $title, channel: $channel, videoId: $videoId, thumbnails: $thumbnails)';
}


}

/// @nodoc
abstract mixin class _$VideoItemCopyWith<$Res> implements $VideoItemCopyWith<$Res> {
  factory _$VideoItemCopyWith(_VideoItem value, $Res Function(_VideoItem) _then) = __$VideoItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'yoTitle') String title,@JsonKey(name: 'yoChannelTitle') String channel,@JsonKey(name: 'yoVideoId') String videoId, YoutubeThumbnails? thumbnails
});


@override $YoutubeThumbnailsCopyWith<$Res>? get thumbnails;

}
/// @nodoc
class __$VideoItemCopyWithImpl<$Res>
    implements _$VideoItemCopyWith<$Res> {
  __$VideoItemCopyWithImpl(this._self, this._then);

  final _VideoItem _self;
  final $Res Function(_VideoItem) _then;

/// Create a copy of VideoItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? channel = null,Object? videoId = null,Object? thumbnails = freezed,}) {
  return _then(_VideoItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,videoId: null == videoId ? _self.videoId : videoId // ignore: cast_nullable_to_non_nullable
as String,thumbnails: freezed == thumbnails ? _self.thumbnails : thumbnails // ignore: cast_nullable_to_non_nullable
as YoutubeThumbnails?,
  ));
}

/// Create a copy of VideoItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YoutubeThumbnailsCopyWith<$Res>? get thumbnails {
    if (_self.thumbnails == null) {
    return null;
  }

  return $YoutubeThumbnailsCopyWith<$Res>(_self.thumbnails!, (value) {
    return _then(_self.copyWith(thumbnails: value));
  });
}
}


/// @nodoc
mixin _$YoutubeThumbnails {

 YoutubeThumbnail? get high; YoutubeThumbnail? get medium;
/// Create a copy of YoutubeThumbnails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YoutubeThumbnailsCopyWith<YoutubeThumbnails> get copyWith => _$YoutubeThumbnailsCopyWithImpl<YoutubeThumbnails>(this as YoutubeThumbnails, _$identity);

  /// Serializes this YoutubeThumbnails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YoutubeThumbnails&&(identical(other.high, high) || other.high == high)&&(identical(other.medium, medium) || other.medium == medium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,high,medium);

@override
String toString() {
  return 'YoutubeThumbnails(high: $high, medium: $medium)';
}


}

/// @nodoc
abstract mixin class $YoutubeThumbnailsCopyWith<$Res>  {
  factory $YoutubeThumbnailsCopyWith(YoutubeThumbnails value, $Res Function(YoutubeThumbnails) _then) = _$YoutubeThumbnailsCopyWithImpl;
@useResult
$Res call({
 YoutubeThumbnail? high, YoutubeThumbnail? medium
});


$YoutubeThumbnailCopyWith<$Res>? get high;$YoutubeThumbnailCopyWith<$Res>? get medium;

}
/// @nodoc
class _$YoutubeThumbnailsCopyWithImpl<$Res>
    implements $YoutubeThumbnailsCopyWith<$Res> {
  _$YoutubeThumbnailsCopyWithImpl(this._self, this._then);

  final YoutubeThumbnails _self;
  final $Res Function(YoutubeThumbnails) _then;

/// Create a copy of YoutubeThumbnails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? high = freezed,Object? medium = freezed,}) {
  return _then(_self.copyWith(
high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as YoutubeThumbnail?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as YoutubeThumbnail?,
  ));
}
/// Create a copy of YoutubeThumbnails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YoutubeThumbnailCopyWith<$Res>? get high {
    if (_self.high == null) {
    return null;
  }

  return $YoutubeThumbnailCopyWith<$Res>(_self.high!, (value) {
    return _then(_self.copyWith(high: value));
  });
}/// Create a copy of YoutubeThumbnails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YoutubeThumbnailCopyWith<$Res>? get medium {
    if (_self.medium == null) {
    return null;
  }

  return $YoutubeThumbnailCopyWith<$Res>(_self.medium!, (value) {
    return _then(_self.copyWith(medium: value));
  });
}
}


/// Adds pattern-matching-related methods to [YoutubeThumbnails].
extension YoutubeThumbnailsPatterns on YoutubeThumbnails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YoutubeThumbnails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YoutubeThumbnails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YoutubeThumbnails value)  $default,){
final _that = this;
switch (_that) {
case _YoutubeThumbnails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YoutubeThumbnails value)?  $default,){
final _that = this;
switch (_that) {
case _YoutubeThumbnails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( YoutubeThumbnail? high,  YoutubeThumbnail? medium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YoutubeThumbnails() when $default != null:
return $default(_that.high,_that.medium);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( YoutubeThumbnail? high,  YoutubeThumbnail? medium)  $default,) {final _that = this;
switch (_that) {
case _YoutubeThumbnails():
return $default(_that.high,_that.medium);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( YoutubeThumbnail? high,  YoutubeThumbnail? medium)?  $default,) {final _that = this;
switch (_that) {
case _YoutubeThumbnails() when $default != null:
return $default(_that.high,_that.medium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YoutubeThumbnails implements YoutubeThumbnails {
  const _YoutubeThumbnails({this.high, this.medium});
  factory _YoutubeThumbnails.fromJson(Map<String, dynamic> json) => _$YoutubeThumbnailsFromJson(json);

@override final  YoutubeThumbnail? high;
@override final  YoutubeThumbnail? medium;

/// Create a copy of YoutubeThumbnails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YoutubeThumbnailsCopyWith<_YoutubeThumbnails> get copyWith => __$YoutubeThumbnailsCopyWithImpl<_YoutubeThumbnails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YoutubeThumbnailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YoutubeThumbnails&&(identical(other.high, high) || other.high == high)&&(identical(other.medium, medium) || other.medium == medium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,high,medium);

@override
String toString() {
  return 'YoutubeThumbnails(high: $high, medium: $medium)';
}


}

/// @nodoc
abstract mixin class _$YoutubeThumbnailsCopyWith<$Res> implements $YoutubeThumbnailsCopyWith<$Res> {
  factory _$YoutubeThumbnailsCopyWith(_YoutubeThumbnails value, $Res Function(_YoutubeThumbnails) _then) = __$YoutubeThumbnailsCopyWithImpl;
@override @useResult
$Res call({
 YoutubeThumbnail? high, YoutubeThumbnail? medium
});


@override $YoutubeThumbnailCopyWith<$Res>? get high;@override $YoutubeThumbnailCopyWith<$Res>? get medium;

}
/// @nodoc
class __$YoutubeThumbnailsCopyWithImpl<$Res>
    implements _$YoutubeThumbnailsCopyWith<$Res> {
  __$YoutubeThumbnailsCopyWithImpl(this._self, this._then);

  final _YoutubeThumbnails _self;
  final $Res Function(_YoutubeThumbnails) _then;

/// Create a copy of YoutubeThumbnails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? high = freezed,Object? medium = freezed,}) {
  return _then(_YoutubeThumbnails(
high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as YoutubeThumbnail?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as YoutubeThumbnail?,
  ));
}

/// Create a copy of YoutubeThumbnails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YoutubeThumbnailCopyWith<$Res>? get high {
    if (_self.high == null) {
    return null;
  }

  return $YoutubeThumbnailCopyWith<$Res>(_self.high!, (value) {
    return _then(_self.copyWith(high: value));
  });
}/// Create a copy of YoutubeThumbnails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$YoutubeThumbnailCopyWith<$Res>? get medium {
    if (_self.medium == null) {
    return null;
  }

  return $YoutubeThumbnailCopyWith<$Res>(_self.medium!, (value) {
    return _then(_self.copyWith(medium: value));
  });
}
}


/// @nodoc
mixin _$YoutubeThumbnail {

 String get url; int get width; int get height;
/// Create a copy of YoutubeThumbnail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$YoutubeThumbnailCopyWith<YoutubeThumbnail> get copyWith => _$YoutubeThumbnailCopyWithImpl<YoutubeThumbnail>(this as YoutubeThumbnail, _$identity);

  /// Serializes this YoutubeThumbnail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is YoutubeThumbnail&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,width,height);

@override
String toString() {
  return 'YoutubeThumbnail(url: $url, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $YoutubeThumbnailCopyWith<$Res>  {
  factory $YoutubeThumbnailCopyWith(YoutubeThumbnail value, $Res Function(YoutubeThumbnail) _then) = _$YoutubeThumbnailCopyWithImpl;
@useResult
$Res call({
 String url, int width, int height
});




}
/// @nodoc
class _$YoutubeThumbnailCopyWithImpl<$Res>
    implements $YoutubeThumbnailCopyWith<$Res> {
  _$YoutubeThumbnailCopyWithImpl(this._self, this._then);

  final YoutubeThumbnail _self;
  final $Res Function(YoutubeThumbnail) _then;

/// Create a copy of YoutubeThumbnail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? width = null,Object? height = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [YoutubeThumbnail].
extension YoutubeThumbnailPatterns on YoutubeThumbnail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _YoutubeThumbnail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _YoutubeThumbnail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _YoutubeThumbnail value)  $default,){
final _that = this;
switch (_that) {
case _YoutubeThumbnail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _YoutubeThumbnail value)?  $default,){
final _that = this;
switch (_that) {
case _YoutubeThumbnail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  int width,  int height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _YoutubeThumbnail() when $default != null:
return $default(_that.url,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  int width,  int height)  $default,) {final _that = this;
switch (_that) {
case _YoutubeThumbnail():
return $default(_that.url,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  int width,  int height)?  $default,) {final _that = this;
switch (_that) {
case _YoutubeThumbnail() when $default != null:
return $default(_that.url,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _YoutubeThumbnail implements YoutubeThumbnail {
  const _YoutubeThumbnail({this.url = '', this.width = 0, this.height = 0});
  factory _YoutubeThumbnail.fromJson(Map<String, dynamic> json) => _$YoutubeThumbnailFromJson(json);

@override@JsonKey() final  String url;
@override@JsonKey() final  int width;
@override@JsonKey() final  int height;

/// Create a copy of YoutubeThumbnail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$YoutubeThumbnailCopyWith<_YoutubeThumbnail> get copyWith => __$YoutubeThumbnailCopyWithImpl<_YoutubeThumbnail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$YoutubeThumbnailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _YoutubeThumbnail&&(identical(other.url, url) || other.url == url)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,width,height);

@override
String toString() {
  return 'YoutubeThumbnail(url: $url, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$YoutubeThumbnailCopyWith<$Res> implements $YoutubeThumbnailCopyWith<$Res> {
  factory _$YoutubeThumbnailCopyWith(_YoutubeThumbnail value, $Res Function(_YoutubeThumbnail) _then) = __$YoutubeThumbnailCopyWithImpl;
@override @useResult
$Res call({
 String url, int width, int height
});




}
/// @nodoc
class __$YoutubeThumbnailCopyWithImpl<$Res>
    implements _$YoutubeThumbnailCopyWith<$Res> {
  __$YoutubeThumbnailCopyWithImpl(this._self, this._then);

  final _YoutubeThumbnail _self;
  final $Res Function(_YoutubeThumbnail) _then;

/// Create a copy of YoutubeThumbnail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? width = null,Object? height = null,}) {
  return _then(_YoutubeThumbnail(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Portfolio {

@JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson) double get quantity;@JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson) double get averagePrice;@JsonKey(name: 'hoMemo') String get memo;
/// Create a copy of Portfolio
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioCopyWith<Portfolio> get copyWith => _$PortfolioCopyWithImpl<Portfolio>(this as Portfolio, _$identity);

  /// Serializes this Portfolio to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Portfolio&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averagePrice, averagePrice) || other.averagePrice == averagePrice)&&(identical(other.memo, memo) || other.memo == memo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity,averagePrice,memo);

@override
String toString() {
  return 'Portfolio(quantity: $quantity, averagePrice: $averagePrice, memo: $memo)';
}


}

/// @nodoc
abstract mixin class $PortfolioCopyWith<$Res>  {
  factory $PortfolioCopyWith(Portfolio value, $Res Function(Portfolio) _then) = _$PortfolioCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson) double quantity,@JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson) double averagePrice,@JsonKey(name: 'hoMemo') String memo
});




}
/// @nodoc
class _$PortfolioCopyWithImpl<$Res>
    implements $PortfolioCopyWith<$Res> {
  _$PortfolioCopyWithImpl(this._self, this._then);

  final Portfolio _self;
  final $Res Function(Portfolio) _then;

/// Create a copy of Portfolio
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = null,Object? averagePrice = null,Object? memo = null,}) {
  return _then(_self.copyWith(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averagePrice: null == averagePrice ? _self.averagePrice : averagePrice // ignore: cast_nullable_to_non_nullable
as double,memo: null == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Portfolio].
extension PortfolioPatterns on Portfolio {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Portfolio value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Portfolio() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Portfolio value)  $default,){
final _that = this;
switch (_that) {
case _Portfolio():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Portfolio value)?  $default,){
final _that = this;
switch (_that) {
case _Portfolio() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson)  double quantity, @JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson)  double averagePrice, @JsonKey(name: 'hoMemo')  String memo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Portfolio() when $default != null:
return $default(_that.quantity,_that.averagePrice,_that.memo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson)  double quantity, @JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson)  double averagePrice, @JsonKey(name: 'hoMemo')  String memo)  $default,) {final _that = this;
switch (_that) {
case _Portfolio():
return $default(_that.quantity,_that.averagePrice,_that.memo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson)  double quantity, @JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson)  double averagePrice, @JsonKey(name: 'hoMemo')  String memo)?  $default,) {final _that = this;
switch (_that) {
case _Portfolio() when $default != null:
return $default(_that.quantity,_that.averagePrice,_that.memo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Portfolio extends Portfolio {
  const _Portfolio({@JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson) this.quantity = 0, @JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson) this.averagePrice = 0, @JsonKey(name: 'hoMemo') this.memo = ''}): super._();
  factory _Portfolio.fromJson(Map<String, dynamic> json) => _$PortfolioFromJson(json);

@override@JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson) final  double quantity;
@override@JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson) final  double averagePrice;
@override@JsonKey(name: 'hoMemo') final  String memo;

/// Create a copy of Portfolio
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortfolioCopyWith<_Portfolio> get copyWith => __$PortfolioCopyWithImpl<_Portfolio>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PortfolioToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Portfolio&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.averagePrice, averagePrice) || other.averagePrice == averagePrice)&&(identical(other.memo, memo) || other.memo == memo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity,averagePrice,memo);

@override
String toString() {
  return 'Portfolio(quantity: $quantity, averagePrice: $averagePrice, memo: $memo)';
}


}

/// @nodoc
abstract mixin class _$PortfolioCopyWith<$Res> implements $PortfolioCopyWith<$Res> {
  factory _$PortfolioCopyWith(_Portfolio value, $Res Function(_Portfolio) _then) = __$PortfolioCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson) double quantity,@JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson) double averagePrice,@JsonKey(name: 'hoMemo') String memo
});




}
/// @nodoc
class __$PortfolioCopyWithImpl<$Res>
    implements _$PortfolioCopyWith<$Res> {
  __$PortfolioCopyWithImpl(this._self, this._then);

  final _Portfolio _self;
  final $Res Function(_Portfolio) _then;

/// Create a copy of Portfolio
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = null,Object? averagePrice = null,Object? memo = null,}) {
  return _then(_Portfolio(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,averagePrice: null == averagePrice ? _self.averagePrice : averagePrice // ignore: cast_nullable_to_non_nullable
as double,memo: null == memo ? _self.memo : memo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PopupItem {

@JsonKey(name: 'poIdx') int get id;@JsonKey(name: 'poTitle') String get title;
/// Create a copy of PopupItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopupItemCopyWith<PopupItem> get copyWith => _$PopupItemCopyWithImpl<PopupItem>(this as PopupItem, _$identity);

  /// Serializes this PopupItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopupItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'PopupItem(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $PopupItemCopyWith<$Res>  {
  factory $PopupItemCopyWith(PopupItem value, $Res Function(PopupItem) _then) = _$PopupItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'poIdx') int id,@JsonKey(name: 'poTitle') String title
});




}
/// @nodoc
class _$PopupItemCopyWithImpl<$Res>
    implements $PopupItemCopyWith<$Res> {
  _$PopupItemCopyWithImpl(this._self, this._then);

  final PopupItem _self;
  final $Res Function(PopupItem) _then;

/// Create a copy of PopupItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PopupItem].
extension PopupItemPatterns on PopupItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopupItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopupItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopupItem value)  $default,){
final _that = this;
switch (_that) {
case _PopupItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopupItem value)?  $default,){
final _that = this;
switch (_that) {
case _PopupItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'poIdx')  int id, @JsonKey(name: 'poTitle')  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopupItem() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'poIdx')  int id, @JsonKey(name: 'poTitle')  String title)  $default,) {final _that = this;
switch (_that) {
case _PopupItem():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'poIdx')  int id, @JsonKey(name: 'poTitle')  String title)?  $default,) {final _that = this;
switch (_that) {
case _PopupItem() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopupItem implements PopupItem {
  const _PopupItem({@JsonKey(name: 'poIdx') this.id = 0, @JsonKey(name: 'poTitle') this.title = ''});
  factory _PopupItem.fromJson(Map<String, dynamic> json) => _$PopupItemFromJson(json);

@override@JsonKey(name: 'poIdx') final  int id;
@override@JsonKey(name: 'poTitle') final  String title;

/// Create a copy of PopupItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopupItemCopyWith<_PopupItem> get copyWith => __$PopupItemCopyWithImpl<_PopupItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopupItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopupItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'PopupItem(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$PopupItemCopyWith<$Res> implements $PopupItemCopyWith<$Res> {
  factory _$PopupItemCopyWith(_PopupItem value, $Res Function(_PopupItem) _then) = __$PopupItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'poIdx') int id,@JsonKey(name: 'poTitle') String title
});




}
/// @nodoc
class __$PopupItemCopyWithImpl<$Res>
    implements _$PopupItemCopyWith<$Res> {
  __$PopupItemCopyWithImpl(this._self, this._then);

  final _PopupItem _self;
  final $Res Function(_PopupItem) _then;

/// Create a copy of PopupItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_PopupItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
