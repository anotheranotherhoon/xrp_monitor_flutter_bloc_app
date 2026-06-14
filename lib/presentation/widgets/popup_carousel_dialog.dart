import 'package:flutter/material.dart';
import 'package:xrp_monitor_flutter_bloc_app/domain/models/models.dart';

class PopupCarouselDialog extends StatefulWidget {
  const PopupCarouselDialog({
    required this.popups,
    required this.imageUrlBuilder,
    required this.onClose,
    required this.onHideToday,
    super.key,
  });

  final List<PopupItem> popups;
  final String Function(PopupItem popup) imageUrlBuilder;
  final VoidCallback onClose;
  final VoidCallback onHideToday;

  @override
  State<PopupCarouselDialog> createState() => _PopupCarouselDialogState();
}

class _PopupCarouselDialogState extends State<PopupCarouselDialog> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 420, maxHeight: 600),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                itemCount: widget.popups.length,
                onPageChanged: (int value) => setState(() => _page = value),
                itemBuilder: (BuildContext context, int index) {
                  final PopupItem popup = widget.popups[index];
                  return Image.network(
                    widget.imageUrlBuilder(popup),
                    fit: BoxFit.contain,
                    errorBuilder: (
                      BuildContext context,
                      Object error,
                      StackTrace? stackTrace,
                    ) {
                      return Center(child: Text(popup.title));
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text('${_page + 1} / ${widget.popups.length}'),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: widget.onHideToday,
                    child: const Text('오늘 하루 보지 않기'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: widget.onClose,
                    child: const Text('닫기'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
