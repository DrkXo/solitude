import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/reader_bloc.dart';

class ReaderPage extends StatefulWidget {
  const ReaderPage({super.key});

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  late bool _showAppBar;
  late ScrollController _scrollController;
  bool _hasJumped = false;
  late StreamController<double> _scrollStreamController;
  late StreamSubscription<double> _scrollSubscription;

  Color _getBackgroundColor(String theme) {
    switch (theme) {
      case 'light':
        return Colors.white;
      case 'dark':
        return Colors.black;
      case 'sepia':
        return const Color(0xFFFBF0D9);
      case 'custom':
        // For now, use sepia as fallback
        return const Color(0xFFFBF0D9);
      default:
        return const Color(0xFFFBF0D9);
    }
  }

  Color _getTextColor(String theme, bool highContrast) {
    Color baseColor;
    switch (theme) {
      case 'light':
        baseColor = Colors.black;
        break;
      case 'dark':
        baseColor = Colors.white;
        break;
      case 'sepia':
        baseColor = const Color(0xFF5F4B32);
        break;
      case 'custom':
        // For now, use sepia text color as fallback
        baseColor = const Color(0xFF5F4B32);
        break;
      default:
        baseColor = const Color(0xFF5F4B32);
    }

    if (highContrast) {
      return theme == 'dark' ? Colors.white : Colors.black;
    }
    return baseColor;
  }

  @override
  void initState() {
    super.initState();
    _showAppBar = true; // Default, will be updated in build
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
                      appBar:
                          _showAppBar &&
                              !settingsState
                                  .appSettings
                                  .accessibility
                                  .immersiveMode
                          ? AppBar(
                              title: Text(controller.currentChapter.title),
                            )
                          : null,
                      body: SizedBox.expand(
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () =>
                              setState(() => _showAppBar = !_showAppBar),
                          onHorizontalDragEnd: (details) {
                            if (details.velocity.pixelsPerSecond.dx > 0) {
                              // Swipe right: previous chapter
                              if (currentChapterIndex > 0) {
                                context.read<ReaderBloc>().add(
                                  const ReaderEvent.previousChapter(),
                                );
                              }
                            } else if (details.velocity.pixelsPerSecond.dx <
                                0) {
                              // Swipe left: next chapter
                              if (currentChapterIndex <
                                  controller.totalChapters - 1) {
                                context.read<ReaderBloc>().add(
                                  const ReaderEvent.nextChapter(),
                                );
                              }
                            }
                          },
                          child: Container(
                            color: _getBackgroundColor(
                              settingsState.appSettings.display.theme,
                            ),
                            child: Directionality(
                              textDirection:
                                  settingsState
                                          .appSettings
                                          .behavior
                                          .readingDirection ==
                                      'RTL'
                                  ? TextDirection.rtl
                                  : TextDirection.ltr,
                               child: ListView(
                                 controller: _scrollController,
                                 physics: const AlwaysScrollableScrollPhysics(),
                                 padding: const EdgeInsets.symmetric(
                                   horizontal: 24.0,
                                   vertical: 16.0,
                                 ),
                                 children: [
                                   Html(
                                     data: controller.getFullChapterContent(),
                                     style: {
                                    'body': Style(
                                      fontFamily:
                                          settingsState
                                              .appSettings
                                              .accessibility
                                              .dyslexicFont
                                          ? 'OpenDyslexic' // Assuming this font is available, or fallback to current
                                          : settingsState
                                                .appSettings
                                                .display
                                                .fontFamily,
                                      fontSize: FontSize(
                                        settingsState
                                            .appSettings
                                            .display
                                            .fontSize,
                                      ),
                                      fontWeight:
                                          settingsState
                                                  .appSettings
                                                  .display
                                                  .fontWeight ==
                                              'bold'
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      lineHeight: LineHeight(
                                        settingsState
                                            .appSettings
                                            .display
                                            .lineHeight,
                                      ),
                                      letterSpacing: settingsState
                                          .appSettings
                                          .display
                                          .letterSpacing,
                                      textAlign:
                                          settingsState
                                                  .appSettings
                                                  .display
                                                  .textAlign ==
                                              'left'
                                          ? TextAlign.left
                                          : settingsState
                                                    .appSettings
                                                    .display
                                                    .textAlign ==
                                                'right'
                                          ? TextAlign.right
                                          : settingsState
                                                    .appSettings
                                                    .display
                                                    .textAlign ==
                                                'center'
                                          ? TextAlign.center
                                          : TextAlign.justify,
                                      color: _getTextColor(
                                        settingsState.appSettings.display.theme,
                                        settingsState
                                            .appSettings
                                            .accessibility
                                            .highContrast,
                                      ),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    'p': Style(
                                      margin: Margins.only(
                                        bottom:
                                            settingsState
                                                .appSettings
                                                .display
                                                .paragraphSpacing *
                                            10,
                                      ),
                                       ),
                                     },
                                   ),
                                 ],
                               ),
                            ),
                          ),
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
                        const Icon(Icons.error_outline, size: 64),
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
