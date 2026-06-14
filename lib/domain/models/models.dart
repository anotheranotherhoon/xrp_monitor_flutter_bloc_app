// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: 'meEmail') @Default('') String email,
    @JsonKey(name: 'meNickname') @Default('') String nickname,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Article with _$Article {
  const factory Article({
    @Default('') String title,
    @Default('') String description,
    @Default('') String url,
    @Default('') String createdAt,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  factory Article.fromNewsJson(Map<String, dynamic> json) => Article(
    title: json['neTitle']?.toString() ?? '',
    description: json['neDescription']?.toString() ?? '',
    url: (json['neOriginalLink'] ?? json['neLink'])?.toString() ?? '',
    createdAt: json['neCreatedAt']?.toString() ?? '',
  );

  factory Article.fromCryptoJson(Map<String, dynamic> json) {
    final String text = json['twText']?.toString() ?? '';
    final List<String> lines = text.split('\n\n');
    return Article(
      title: lines.isEmpty ? '' : lines.first,
      description: lines.skip(1).join('\n\n'),
      url: json['twId']?.toString() ?? '',
      createdAt: json['twCreatedAt']?.toString() ?? '',
    );
  }
}

@freezed
abstract class VideoItem with _$VideoItem {
  const factory VideoItem({
    @JsonKey(name: 'yoTitle') @Default('') String title,
    @JsonKey(name: 'yoChannelTitle') @Default('') String channel,
    @JsonKey(name: 'yoVideoId') @Default('') String videoId,
    YoutubeThumbnails? thumbnails,
  }) = _VideoItem;

  const VideoItem._();

  String get thumbnailUrl =>
      thumbnails?.high?.url ?? thumbnails?.medium?.url ?? '';

  factory VideoItem.fromJson(Map<String, dynamic> json) =>
      _$VideoItemFromJson(json);
}

@freezed
abstract class YoutubeThumbnails with _$YoutubeThumbnails {
  const factory YoutubeThumbnails({
    YoutubeThumbnail? high,
    YoutubeThumbnail? medium,
  }) = _YoutubeThumbnails;

  factory YoutubeThumbnails.fromJson(Map<String, dynamic> json) =>
      _$YoutubeThumbnailsFromJson(json);
}

@freezed
abstract class YoutubeThumbnail with _$YoutubeThumbnail {
  const factory YoutubeThumbnail({
    @Default('') String url,
    @Default(0) int width,
    @Default(0) int height,
  }) = _YoutubeThumbnail;

  factory YoutubeThumbnail.fromJson(Map<String, dynamic> json) =>
      _$YoutubeThumbnailFromJson(json);
}

@freezed
abstract class Portfolio with _$Portfolio {
  const factory Portfolio({
    @JsonKey(name: 'hoQuantity', fromJson: _doubleFromJson)
    @Default(0)
    double quantity,
    @JsonKey(name: 'hoAveragePrice', fromJson: _doubleFromJson)
    @Default(0)
    double averagePrice,
    @JsonKey(name: 'hoMemo') @Default('') String memo,
  }) = _Portfolio;

  const Portfolio._();

  double get totalInvested => quantity * averagePrice;

  factory Portfolio.fromJson(Map<String, dynamic> json) =>
      _$PortfolioFromJson(json);
}

@freezed
abstract class PopupItem with _$PopupItem {
  const factory PopupItem({
    @JsonKey(name: 'poIdx') @Default(0) int id,
    @JsonKey(name: 'poTitle') @Default('') String title,
  }) = _PopupItem;

  factory PopupItem.fromJson(Map<String, dynamic> json) =>
      _$PopupItemFromJson(json);
}

double _doubleFromJson(Object? value) {
  if (value is num) return value.toDouble();
  return double.tryParse(value?.toString() ?? '') ?? 0;
}
