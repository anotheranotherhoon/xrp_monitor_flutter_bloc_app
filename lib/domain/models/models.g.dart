// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  email: json['meEmail'] as String? ?? '',
  nickname: json['meNickname'] as String? ?? '',
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'meEmail': instance.email,
  'meNickname': instance.nickname,
};

_Article _$ArticleFromJson(Map<String, dynamic> json) => _Article(
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  url: json['url'] as String? ?? '',
  createdAt: json['createdAt'] as String? ?? '',
);

Map<String, dynamic> _$ArticleToJson(_Article instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'url': instance.url,
  'createdAt': instance.createdAt,
};

_VideoItem _$VideoItemFromJson(Map<String, dynamic> json) => _VideoItem(
  title: json['yoTitle'] as String? ?? '',
  channel: json['yoChannelTitle'] as String? ?? '',
  videoId: json['yoVideoId'] as String? ?? '',
  thumbnails:
      json['thumbnails'] == null
          ? null
          : YoutubeThumbnails.fromJson(
            json['thumbnails'] as Map<String, dynamic>,
          ),
);

Map<String, dynamic> _$VideoItemToJson(_VideoItem instance) =>
    <String, dynamic>{
      'yoTitle': instance.title,
      'yoChannelTitle': instance.channel,
      'yoVideoId': instance.videoId,
      'thumbnails': instance.thumbnails,
    };

_YoutubeThumbnails _$YoutubeThumbnailsFromJson(Map<String, dynamic> json) =>
    _YoutubeThumbnails(
      high:
          json['high'] == null
              ? null
              : YoutubeThumbnail.fromJson(json['high'] as Map<String, dynamic>),
      medium:
          json['medium'] == null
              ? null
              : YoutubeThumbnail.fromJson(
                json['medium'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$YoutubeThumbnailsToJson(_YoutubeThumbnails instance) =>
    <String, dynamic>{'high': instance.high, 'medium': instance.medium};

_YoutubeThumbnail _$YoutubeThumbnailFromJson(Map<String, dynamic> json) =>
    _YoutubeThumbnail(
      url: json['url'] as String? ?? '',
      width: (json['width'] as num?)?.toInt() ?? 0,
      height: (json['height'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$YoutubeThumbnailToJson(_YoutubeThumbnail instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

_Portfolio _$PortfolioFromJson(Map<String, dynamic> json) => _Portfolio(
  quantity:
      json['hoQuantity'] == null ? 0 : _doubleFromJson(json['hoQuantity']),
  averagePrice:
      json['hoAveragePrice'] == null
          ? 0
          : _doubleFromJson(json['hoAveragePrice']),
  memo: json['hoMemo'] as String? ?? '',
);

Map<String, dynamic> _$PortfolioToJson(_Portfolio instance) =>
    <String, dynamic>{
      'hoQuantity': instance.quantity,
      'hoAveragePrice': instance.averagePrice,
      'hoMemo': instance.memo,
    };

_PopupItem _$PopupItemFromJson(Map<String, dynamic> json) => _PopupItem(
  id: (json['poIdx'] as num?)?.toInt() ?? 0,
  title: json['poTitle'] as String? ?? '',
);

Map<String, dynamic> _$PopupItemToJson(_PopupItem instance) =>
    <String, dynamic>{'poIdx': instance.id, 'poTitle': instance.title};
