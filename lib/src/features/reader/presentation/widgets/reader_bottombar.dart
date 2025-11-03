import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../bloc/reader_bloc.dart';

class ReaderBottomBar extends StatelessWidget {
  final bool showBars;
  final int currentChapterIndex;
  final int totalChapters;

  const ReaderBottomBar({
    super.key,
    required this.showBars,
    required this.currentChapterIndex,
    required this.totalChapters,
  });

  @override
  Widget build(BuildContext context) {
    if (!showBars) return const SizedBox.shrink();

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Material(
        elevation: 0.0,
        child: Container(
          height: kToolbarHeight,
          color:
              Theme.of(context).appBarTheme.backgroundColor ??
              Theme.of(context).primaryColor,
          child: Row(
            children: [
              // Chapter jump button on the left
              TextButton(
                onPressed: () => _showChapterDialog(context),
                child: Text(
                  'Chapter ${currentChapterIndex + 1} of $totalChapters',
                ),
              ),
              // Spacer
              const Spacer(),
              // Previous and Next buttons
              IconButton(
                icon: const Icon(LucideIcons.chevronLeft),
                onPressed: currentChapterIndex > 0
                    ? () {
                        context.read<ReaderBloc>().add(
                          const ReaderEvent.previousChapter(),
                        );
                      }
                    : null,
              ),
              IconButton(
                icon: const Icon(LucideIcons.chevronRight),
                onPressed: currentChapterIndex < totalChapters - 1
                    ? () {
                        context.read<ReaderBloc>().add(
                          const ReaderEvent.nextChapter(),
                        );
                      }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showChapterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Jump to Chapter'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: totalChapters,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Chapter ${index + 1}'),
                  selected: index == currentChapterIndex,
                  onTap: () {
                    context.read<ReaderBloc>().add(
                      ReaderEvent.updateReadingProgress(index),
                    );
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
