import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

import '../../../../core/localization/app_localizations.dart';
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
