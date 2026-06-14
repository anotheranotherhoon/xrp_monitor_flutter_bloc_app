import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';
import 'package:xrp_monitor_flutter_bloc_app/features/content/content_bloc.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  Future<void> _openVideo(String videoId) async {
    await launchUrl(
      Uri.parse('https://www.youtube.com/watch?v=$videoId'),
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('XRP 유튜브')),
      body: BlocBuilder<VideoContentBloc, ContentState<VideoItem>>(
        builder: (BuildContext context, ContentState<VideoItem> state) {
          if (state.loading && state.items.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: state.items.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == state.items.length) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: OutlinedButton(
                    onPressed:
                        state.hasMore && !state.loading
                            ? () => context.read<VideoContentBloc>().add(
                              const ContentRequested(),
                            )
                            : null,
                    child: Text(state.hasMore ? '더 보기' : '마지막 영상입니다'),
                  ),
                );
              }
              final VideoItem video = state.items[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () => _openVideo(video.videoId),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      if (video.thumbnailUrl.isNotEmpty)
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.network(
                            video.thumbnailUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              video.title,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 4),
                            Text(video.channel),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
