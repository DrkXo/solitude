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
    required this.ebookId,
    this.coverImage,
  });

  final String ebookId;
  final String? coverImage;

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  @override
  void initState() {
    super.initState();
    context.read<ReaderBloc>().add(
      ReaderEvent.loadEbook(
        widget.ebookId,
        coverImage: widget.coverImage,
      ),
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
                    showBars,
                    pageController,
                  ) {
                    return Scaffold(
                      appBar: showBars ? const ReaderAppBar() : null,
                      bottomNavigationBar: showBars
                          ? ReaderBottomAppBar(pageController: pageController!)
                          : null,
                      body: SafeArea(
                        child: PageView.builder(
                          controller: pageController,

                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: controller.totalChapters,
                          itemBuilder: (context, index) => ReaderContent(
                            controller: controller,
                            appSettings: settingsState.appSettings,
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
