import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solitude/src/features/reader/presentation/widgets/reader_error_widget.dart';
import 'package:solitude/src/features/reader/presentation/widgets/reader_loading_widget.dart';

import '../../../settings/data/models/settings_constants.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/reader_bloc.dart';
import '../widgets/reader_appbar.dart';
import '../widgets/reader_bottom_appbar.dart';
import '../widgets/reader_content.dart';

class ReaderPage extends StatefulWidget {
  const ReaderPage({super.key});

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
                    showBars,
                  ) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (_pageController.hasClients &&
                          (_pageController.page?.round() ?? 0) !=
                              currentChapterIndex) {
                        _pageController.jumpToPage(currentChapterIndex);
                      }
                    });

                    return Scaffold(
                      appBar: showBars ? const ReaderAppBar() : null,
                      bottomNavigationBar: showBars
                          ? ReaderBottomAppBar(pageController: _pageController)
                          : null,
                      body: SafeArea(
                        child: PageView.builder(
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
                            onToggleBars: () => context.read<ReaderBloc>().add(
                              const ReaderEvent.toggleBars(),
                            ),
                            onTapDown: (details) {
                              final screenWidth = MediaQuery.of(
                                context,
                              ).size.width;
                              final tapX = details.localPosition.dx;

                              if (tapX < screenWidth * 0.3) {
                                // Left zone
                                if (settingsState
                                        .appSettings
                                        .behavior
                                        .navigationMethod ==
                                    NavigationMethod.tap) {
                                  final action = settingsState
                                      .appSettings
                                      .behavior
                                      .tapZones
                                      .left;
                                  if (action == 'previousPage' && index > 0) {
                                    context.read<ReaderBloc>().add(
                                      const ReaderEvent.previousChapter(),
                                    );
                                  }
                                }
                              } else if (tapX > screenWidth * 0.7) {
                                // Right zone
                                if (settingsState
                                        .appSettings
                                        .behavior
                                        .navigationMethod ==
                                    NavigationMethod.tap) {
                                  final action = settingsState
                                      .appSettings
                                      .behavior
                                      .tapZones
                                      .right;
                                  if (action == 'nextPage' &&
                                      index < controller.totalChapters - 1) {
                                    context.read<ReaderBloc>().add(
                                      const ReaderEvent.nextChapter(),
                                    );
                                  }
                                }
                              } else {
                                // Center zone - toggle bars
                                context.read<ReaderBloc>().add(
                                  const ReaderEvent.toggleBars(),
                                );
                              }
                            },
                            onHorizontalDragEnd:
                                settingsState
                                        .appSettings
                                        .behavior
                                        .navigationMethod ==
                                    NavigationMethod.swipeHorizontal
                                ? (details) {
                                    if (details.velocity.pixelsPerSecond.dx >
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
                                    if (details.velocity.pixelsPerSecond.dy <
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
                      ),
                    );
                  },
              error: (message) {
                return ReaderErrorWidget(
                  message: message,
                );
              },
              loading: (coverImagePath) => ReaderLoadingWidget(
                coverImagePath: coverImagePath,
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
