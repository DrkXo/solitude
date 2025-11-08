import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../bloc/reader_bloc.dart';

class ReaderBottomAppBar extends StatelessWidget {
  final PageController pageController;

  const ReaderBottomAppBar({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReaderBloc, ReaderState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded:
              (
                controller,
                currentChapterIndex,
                currentPageIndex,
                chapterOffsets,
                bookmarks,
                showBars,
                pageController,
              ) {
                return BottomAppBar(
                  color:
                      Theme.of(context).appBarTheme.backgroundColor ??
                      Theme.of(context).primaryColor,
                  child: Row(
                    children: [
                      Text(
                        'Chapter ${currentChapterIndex + 1} of ${controller.totalChapters}',
                      ),
                      const Spacer(),
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
                        onPressed:
                            currentChapterIndex < controller.totalChapters - 1
                            ? () {
                                context.read<ReaderBloc>().add(
                                  const ReaderEvent.nextChapter(),
                                );
                              }
                            : null,
                      ),
                    ],
                  ),
                ).animate().scaleY().slideY(begin: 1.0, end: 0.0);
              },
          orElse: () => const SizedBox(),
        );
      },
    );
  }

}
