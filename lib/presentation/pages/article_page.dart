import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/content/content_bloc.dart';

enum ArticleSource { crypto, news }

class ArticlePage extends StatelessWidget {
  const ArticlePage({required this.title, required this.source, super.key});

  final String title;
  final ArticleSource source;

  Future<void> _openUrl(String value) async {
    final Uri? uri = Uri.tryParse(value);
    if (uri != null) await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body:
          source == ArticleSource.crypto
              ? BlocBuilder<CryptoArticleBloc, ContentState<Article>>(
                builder: _buildContent,
              )
              : BlocBuilder<NewsArticleBloc, ContentState<Article>>(
                builder: _buildContent,
              ),
    );
  }

  Widget _buildContent(BuildContext context, ContentState<Article> state) {
    if (state.loading && state.items.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return RefreshIndicator(
      onRefresh: () async {
        _bloc(context).add(const ContentRequested(refresh: true));
      },
      child: ListView.builder(
        itemCount: state.items.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == state.items.length) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: OutlinedButton(
                onPressed:
                    state.hasMore && !state.loading
                        ? () => _bloc(context).add(const ContentRequested())
                        : null,
                child: Text(state.hasMore ? '더 보기' : '마지막 기사입니다'),
              ),
            );
          }
          final Article article = state.items[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              title: Text(article.title),
              subtitle: Text(
                article.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: article.url.isEmpty ? null : () => _openUrl(article.url),
            ),
          );
        },
      ),
    );
  }

  ContentBloc<Article> _bloc(BuildContext context) {
    return source == ArticleSource.crypto
        ? context.read<CryptoArticleBloc>()
        : context.read<NewsArticleBloc>();
  }
}
