import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../settings/data/models/settings_constants.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/reader_bloc.dart';
import '../widgets/reader_bottombar.dart';
import '../widgets/reader_content.dart';
import '../widgets/reader_topbar.dart';

class ReaderPage extends StatefulWidget {
  const ReaderPage({super.key});

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  late bool _showBars;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _showBars = true; // Default, will be updated in build
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, settingsState) {
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
                  ) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (_pageController.hasClients &&
                          (_pageController.page?.round() ?? 0) !=
                              currentChapterIndex) {
                        _pageController.jumpToPage(currentChapterIndex);
                      }
                    });

                    return Scaffold(
                      body: SafeArea(
                        child: Stack(
                          children: [
                            PageView.builder(
                              controller: _pageController,
                              scrollDirection:
                                  settingsState
                                          .appSettings
                                          .behavior
                                          .navigationMethod ==
                                      NavigationMethod.swipeVertical
                                  ? Axis.vertical
                                  : Axis.horizontal,
                              physics:
                                  (settingsState
                                              .appSettings
                                              .behavior
                                              .navigationMethod ==
                                          NavigationMethod.swipeHorizontal ||
                                      settingsState
                                              .appSettings
                                              .behavior
                                              .navigationMethod ==
                                          NavigationMethod.swipeVertical)
                                  ? null
                                  : NeverScrollableScrollPhysics(),
                              itemCount: controller.totalChapters,
                              itemBuilder: (context, index) => ReaderContent(
                                controller: controller,
                                settingsState: settingsState,
                                chapterIndex: index,
                                offset: chapterOffsets[index] ?? 0.0,
                                onToggleBars: () =>
                                    setState(() => _showBars = !_showBars),
                                onTapDown: (details) {
                                  if (settingsState
                                          .appSettings
                                          .behavior
                                          .navigationMethod ==
                                      NavigationMethod.tap) {
                                    final screenWidth = MediaQuery.of(
                                      context,
                                    ).size.width;
                                    final tapX = details.localPosition.dx;

                                    if (tapX < screenWidth * 0.3) {
                                      // Left zone
                                      final action = settingsState
                                          .appSettings
                                          .behavior
                                          .tapZones
                                          .left;
                                      if (action == 'previousPage' &&
                                          index > 0) {
                                        context.read<ReaderBloc>().add(
                                          const ReaderEvent.previousChapter(),
                                        );
                                      }
                                    } else if (tapX > screenWidth * 0.7) {
                                      // Right zone
                                      final action = settingsState
                                          .appSettings
                                          .behavior
                                          .tapZones
                                          .right;
                                      if (action == 'nextPage' &&
                                          index <
                                              controller.totalChapters - 1) {
                                        context.read<ReaderBloc>().add(
                                          const ReaderEvent.nextChapter(),
                                        );
                                      }
                                    } else {
                                      // Center zone
                                      final action = settingsState
                                          .appSettings
                                          .behavior
                                          .tapZones
                                          .center;
                                      if (action == 'menuToggle') {
                                        setState(() => _showBars = !_showBars);
                                      }
                                    }
                                  }
                                },
                                onHorizontalDragEnd:
                                    settingsState
                                            .appSettings
                                            .behavior
                                            .navigationMethod ==
                                        NavigationMethod.swipeHorizontal
                                    ? (details) {
                                        if (details
                                                .velocity
                                                .pixelsPerSecond
                                                .dx >
                                            0) {
                                          if (index > 0) {
                                            context.read<ReaderBloc>().add(
                                              const ReaderEvent.previousChapter(),
                                            );
                                          }
                                        } else if (details
                                                .velocity
                                                .pixelsPerSecond
                                                .dx <
                                            0) {
                                          if (index <
                                              controller.totalChapters - 1) {
                                            context.read<ReaderBloc>().add(
                                              const ReaderEvent.nextChapter(),
                                            );
                                          }
                                        }
                                      }
                                    : null,
                                onVerticalDragEnd:
                                    settingsState
                                            .appSettings
                                            .behavior
                                            .navigationMethod ==
                                        NavigationMethod.swipeVertical
                                    ? (details) {
                                        if (details
                                                .velocity
                                                .pixelsPerSecond
                                                .dy <
                                            0) {
                                          if (index <
                                              controller.totalChapters - 1) {
                                            context.read<ReaderBloc>().add(
                                              const ReaderEvent.nextChapter(),
                                            );
                                          }
                                        } else if (details
                                                .velocity
                                                .pixelsPerSecond
                                                .dy >
                                            0) {
                                          if (index > 0) {
                                            context.read<ReaderBloc>().add(
                                              const ReaderEvent.previousChapter(),
                                            );
                                          }
                                        }
                                      }
                                    : null,
                              ),
                              onPageChanged: (page) {
                                context.read<ReaderBloc>().add(
                                  ReaderEvent.updateReadingProgress(page),
                                );
                              },
                            ),
                            ReaderTopBar(
                              showBars: _showBars,
                            ),
                            ReaderBottomBar(
                              showBars: _showBars,
                              currentChapterIndex: currentChapterIndex,
                              totalChapters: controller.totalChapters,
                              onChapterJump: (context) => _showChapterDialog(
                                context,
                                controller.totalChapters,
                                currentChapterIndex,
                                _pageController,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
              error: (message) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(AppLocalizations.of(context)!.errorTitle),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(LucideIcons.x, size: 64),
                        const SizedBox(height: 16),
                        Text(message, textAlign: TextAlign.center),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Retry loading
                                context.read<ReaderBloc>().add(
                                  const ReaderEvent.started(),
                                );
                              },
                              child: const Text('Retry'),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Go Back'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              loading: (coverImagePath) => Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: coverImagePath != null
                              ? CoverImage(
                                  imagePath: coverImagePath,
                                  fit: BoxFit.cover,
                                )
                              : Center(
                                  child: Icon(
                                    LucideIcons.bookOpen,
                                    size: 64,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      const CircularProgressIndicator(),
                      const SizedBox(height: 16),
                      Text(
                        'Loading book...',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
              orElse: () => const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
