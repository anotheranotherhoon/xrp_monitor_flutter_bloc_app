import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xrp_monitor_flutter_bloc_app/data/repositories/repositories.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

part 'content_bloc.freezed.dart';

typedef PageLoader<T> = Future<ContentPage<T>> Function(String? cursor);

sealed class ContentEvent extends Equatable {
  const ContentEvent();
  @override
  List<Object?> get props => <Object?>[];
}

final class ContentRequested extends ContentEvent {
  const ContentRequested({this.refresh = false});
  final bool refresh;
  @override
  List<Object?> get props => <Object?>[refresh];
}

@freezed
abstract class ContentState<T> with _$ContentState<T> {
  const factory ContentState({
    required List<T> items,
    String? cursor,
    @Default(false) bool loading,
    @Default(true) bool hasMore,
    @Default('') String error,
  }) = _ContentState<T>;
}

class ContentBloc<T> extends Bloc<ContentEvent, ContentState<T>> {
  ContentBloc(this._loader) : super(ContentState<T>(items: <T>[])) {
    on<ContentRequested>((
      ContentRequested event,
      Emitter<ContentState<T>> emit,
    ) async {
      if (state.loading || (!event.refresh && !state.hasMore)) return;
      emit(
        ContentState<T>(
          items: event.refresh ? <T>[] : state.items,
          cursor: event.refresh ? null : state.cursor,
          loading: true,
          hasMore: true,
        ),
      );
      try {
        final ContentPage<T> page = await _loader(
          event.refresh ? null : state.cursor,
        );
        emit(
          ContentState<T>(
            items: <T>[...state.items, ...page.items],
            cursor: page.nextCursor,
            hasMore: page.nextCursor != null && page.items.isNotEmpty,
          ),
        );
      } on Object catch (error) {
        emit(
          ContentState<T>(
            items: state.items,
            cursor: state.cursor,
            hasMore: state.hasMore,
            error: error.toString(),
          ),
        );
      }
    });
  }
  final PageLoader<T> _loader;
}

class CryptoArticleBloc extends ContentBloc<Article> {
  CryptoArticleBloc(ContentRepository repository)
    : super(repository.getCryptoArticles);
}

class NewsArticleBloc extends ContentBloc<Article> {
  NewsArticleBloc(ContentRepository repository) : super(repository.getNews);
}

class VideoContentBloc extends ContentBloc<VideoItem> {
  VideoContentBloc(ContentRepository repository) : super(repository.getVideos);
}
