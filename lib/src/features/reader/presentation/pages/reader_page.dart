import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../core/services/reader_settings_service.dart';
import '../bloc/reader_bloc.dart';

class ReaderPage extends StatefulWidget {
  const ReaderPage({super.key});

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  bool _showAppBar = true;
  late ScrollController _scrollController;
  bool _hasJumped = false;
  late StreamController<double> _scrollStreamController;
  late StreamSubscription<double> _scrollSubscription;

  @override
  void initState() {
    super.initState();
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
    final readerSettingsService = GetIt.I<ReaderSettingsService>();

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
                  body: NestedScrollView(
                    headerSliverBuilder: (context, innerBoxIsScrolled) =>
                        _showAppBar
                        ? [
                            SliverAppBar(
                              title: Text(controller.currentChapter.title),
                              pinned: false,
                              floating: true,
                              snap: true,
                            ),
                          ]
                        : [],
                    body: SizedBox.expand(
                      child: GestureDetector(
                        onTap: () => setState(() => _showAppBar = !_showAppBar),
                        onHorizontalDragEnd: (details) {
                          if (details.velocity.pixelsPerSecond.dx > 0) {
                            // Swipe right: previous chapter
                            if (currentChapterIndex > 0) {
                              context.read<ReaderBloc>().add(
                                const ReaderEvent.previousChapter(),
                              );
                            }
                          } else if (details.velocity.pixelsPerSecond.dx < 0) {
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
                          color: Theme.of(context).colorScheme.surface,
                          child: SingleChildScrollView(
                            controller: _scrollController,
                            physics: const AlwaysScrollableScrollPhysics(),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                              vertical: 16.0,
                            ),
                            child: Html(
                              data: controller.getFullChapterContent(),
                              style: {
                                "body": Style(
                                  fontSize: FontSize(
                                    readerSettingsService.fontSize,
                                  ),
                                  lineHeight: const LineHeight(1.8),
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                ),
                                "p": Style(
                                  margin: Margins.only(bottom: 16.0),
                                ),
                                "h1": Style(
                                  fontSize: FontSize(28.0),
                                  fontWeight: FontWeight.bold,
                                  margin: Margins.only(
                                    bottom: 20.0,
                                    top: 32.0,
                                  ),
                                ),
                                "h2": Style(
                                  fontSize: FontSize(24.0),
                                  fontWeight: FontWeight.bold,
                                  margin: Margins.only(
                                    bottom: 16.0,
                                    top: 28.0,
                                  ),
                                ),
                                "h3": Style(
                                  fontSize: FontSize(20.0),
                                  fontWeight: FontWeight.bold,
                                  margin: Margins.only(
                                    bottom: 12.0,
                                    top: 24.0,
                                  ),
                                ),
                              },
                            ),
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
  }
}
