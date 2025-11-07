import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solitude/src/features/reader/presentation/widgets/reader_error_widget.dart';
import 'package:solitude/src/features/reader/presentation/widgets/reader_loading_widget.dart';

import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/reader_bloc.dart';
import '../widgets/reader_appbar.dart';
import '../widgets/reader_bottom_appbar.dart';
import '../widgets/reader_content.dart';

class ReaderPage extends StatefulWidget {
  const ReaderPage({
    super.key,
  });

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

                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.totalChapters,
                          itemBuilder: (context, index) => ReaderContent(
                            controller: controller,
                            settingsState: settingsState,
                            chapterIndex: index,
                            offset: chapterOffsets[index] ?? 0.0,
                          ),
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
