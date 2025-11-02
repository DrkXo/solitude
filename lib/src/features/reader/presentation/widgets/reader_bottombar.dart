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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
}
