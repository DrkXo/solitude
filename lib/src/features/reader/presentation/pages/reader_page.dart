import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:rxdart/rxdart.dart';

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
  late ScrollController _scrollController;
  bool _hasJumped = false;
  int _previousChapterIndex = -1;
  late StreamController<double> _scrollStreamController;
  late StreamSubscription<double> _scrollSubscription;

  @override
  void initState() {
    super.initState();
    _showBars = true; // Default, will be updated in build
    _scrollController = ScrollController();
    _scrollStreamController = StreamController<double>();
    _scrollSubscription = _scrollStreamController.stream
        .debounceTime(const Duration(milliseconds: 100))
        .listen((offset) {
          if (!mounted) return;
          context.read<ReaderBloc>().add(ReaderEvent.updatePageOffset(offset));
        });
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollSubscription.cancel();
    _scrollStreamController.close();
    if (_scrollController.hasClients) {
      context.read<ReaderBloc>().add(
        ReaderEvent.updatePageOffset(_scrollController.offset),
      );
    }
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    _scrollStreamController.add(_scrollController.offset);
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
                    pageOffset,
                    bookmarks,
                  ) {
                    if (currentChapterIndex != _previousChapterIndex) {
                      _hasJumped = false;
                      _previousChapterIndex = currentChapterIndex;
                    }
                    if (!_hasJumped) {
                      _hasJumped = true;
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        Future.delayed(const Duration(milliseconds: 100), () {
                          if (mounted && _scrollController.hasClients) {
                            _scrollController.jumpTo(pageOffset);
                          }
                        });
                      });
                    }

                    return Scaffold(
                      body: SafeArea(
                        child: Stack(
                          children: [
                            ReaderContent(
                              controller: controller,
                              settingsState: settingsState,
                              scrollController: _scrollController,
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
                                        currentChapterIndex > 0) {
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
                                        currentChapterIndex <
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
                              onHorizontalDragEnd: (details) {
                                if (settingsState
                                        .appSettings
                                        .behavior
                                        .navigationMethod ==
                                    NavigationMethod.swipeHorizontal) {
                                  if (details.velocity.pixelsPerSecond.dx > 0) {
                                    // Swipe right: previous chapter
                                    if (currentChapterIndex > 0) {
                                      context.read<ReaderBloc>().add(
                                        const ReaderEvent.previousChapter(),
                                      );
                                    }
                                  } else if (details
                                          .velocity
                                          .pixelsPerSecond
                                          .dx <
                                      0) {
                                    // Swipe left: next chapter
                                    if (currentChapterIndex <
                                        controller.totalChapters - 1) {
                                      context.read<ReaderBloc>().add(
                                        const ReaderEvent.nextChapter(),
                                      );
                                    }
                                  }
                                }
                              },
                              onVerticalDragEnd: (details) {
                                if (settingsState
                                        .appSettings
                                        .behavior
                                        .navigationMethod ==
                                    NavigationMethod.swipeVertical) {
                                  if (details.velocity.pixelsPerSecond.dy < 0) {
                                    // Swipe up: next chapter
                                    if (currentChapterIndex <
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
                                    // Swipe down: previous chapter
                                    if (currentChapterIndex > 0) {
                                      context.read<ReaderBloc>().add(
                                        const ReaderEvent.previousChapter(),
                                      );
                                    }
                                  }
                                }
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
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          },
        );
      },
    );
  }
}
