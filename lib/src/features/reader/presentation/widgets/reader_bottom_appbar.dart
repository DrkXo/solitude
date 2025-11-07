import 'package:flutter/material.dart';
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
                      TextButton(
                        onPressed: () => _showChapterDialog(
                          context,
                          controller.totalChapters,
                          currentChapterIndex,
                          pageController!,
                        ),
                        child: Text(
                          'Chapter ${currentChapterIndex + 1} of ${controller.totalChapters}',
                        ),
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
                );
              },
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  void _showChapterDialog(
    BuildContext context,
    int totalChapters,
    int currentChapterIndex,
    PageController pageController,
  ) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            ScrollController scrollController = ScrollController();
            WidgetsBinding.instance.addPostFrameCallback((_) {
              double height = MediaQuery.of(context).size.height * 0.8;
              double itemHeight = 56.0;
              double offset =
                  currentChapterIndex * itemHeight -
                  (height / 2) +
                  (itemHeight / 2);
              if (offset < 0) offset = 0;
              scrollController.animateTo(
                offset,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            });
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: totalChapters,
                      itemBuilder: (context, index) {
                        return ListTile(
                          key: Key('chapter_$index'),
                          leading: index == currentChapterIndex
                              ? Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(
                                    LucideIcons.bookOpen,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                )
                              : null,
                          title: Text('Chapter ${index + 1}'),
                          selected: index == currentChapterIndex,
                          onTap: () {
                            context.read<ReaderBloc>().add(
                              ReaderEvent.updateReadingProgress(index),
                            );
                            pageController.jumpToPage(index);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
