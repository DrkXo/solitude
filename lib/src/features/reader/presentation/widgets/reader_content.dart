import 'package:ebook_x/ebook_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:solitude/src/features/reader/presentation/extension/element_widget_extension.dart';

import '../../../settings/data/models/settings_constants.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/reader_bloc.dart';
import '../utils/reader_gesture_handlers.dart';

class ReaderContent extends StatefulWidget {
  final EbookXController controller;
  final SettingsState settingsState;
  final int chapterIndex;
  final double offset;

  const ReaderContent({
    super.key,
    required this.controller,
    required this.settingsState,
    required this.chapterIndex,
    required this.offset,
  });

  @override
  State<ReaderContent> createState() => _ReaderContentState();
}

class _ReaderContentState extends State<ReaderContent> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: widget.offset);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    context.read<ReaderBloc>().add(
      ReaderEvent.updateChapterOffset(
        widget.chapterIndex,
        _scrollController.offset,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
      return SizedBox.expand(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTapDown: ReaderGestureHandlers.getOnTapDown(
            context,
            widget.controller,
            widget.settingsState,
            widget.chapterIndex,
          ),
          onHorizontalDragEnd: ReaderGestureHandlers.getOnHorizontalDragEnd(
            context,
            widget.controller,
            widget.settingsState,
            widget.chapterIndex,
          ),
          onVerticalDragEnd: ReaderGestureHandlers.getOnVerticalDragEnd(
            context,
            widget.controller,
            widget.settingsState,
            widget.chapterIndex,
          ),
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Directionality(
            textDirection:
                widget.settingsState.appSettings.behavior.readingDirection ==
                    ReadingDirection.rtl
                ? TextDirection.rtl
                : TextDirection.ltr,
            child: CustomScrollView(
              controller: _scrollController,
              physics: widget.settingsState.appSettings.behavior.navigationMethod ==
                          NavigationMethod.swipeVertical
                  ? const NeverScrollableScrollPhysics()
                  : null,
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.all(16.0),
                  sliver: HtmlWidget(
                    enableCaching: true,
                    buildAsync: false,
                    renderMode: RenderMode.sliverList,
                     rebuildTriggers: [
                       widget.settingsState.appSettings,
                     ],
                     widget.settingsState.appSettings.display.htmlRenderingMode == HtmlRenderingMode.original
                         ? widget.controller.getFullChapterContent()
                         : widget.controller.getFullChapterContent().stripStyles(),
                     customWidgetBuilder: widget.settingsState.appSettings.display.htmlRenderingMode == HtmlRenderingMode.original
                         ? null
                         : (element) => element.toCustomWidget(
                               appSettings: widget.settingsState.appSettings,
                             ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
