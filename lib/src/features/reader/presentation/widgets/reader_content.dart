import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../../../settings/data/models/settings_constants.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';
import '../bloc/reader_bloc.dart';

class ReaderContent extends StatefulWidget {
  final dynamic controller;
  final SettingsState settingsState;
  final int chapterIndex;
  final double offset;
  final VoidCallback onToggleBars;
  final Function(TapDownDetails) onTapDown;
  final Function(DragEndDetails)? onHorizontalDragEnd;
  final Function(DragEndDetails)? onVerticalDragEnd;

  const ReaderContent({
    super.key,
    required this.controller,
    required this.settingsState,
    required this.chapterIndex,
    required this.offset,
    required this.onToggleBars,
    required this.onTapDown,
    this.onHorizontalDragEnd,
    this.onVerticalDragEnd,
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
    context.read<ReaderBloc>().add(ReaderEvent.updateChapterOffset(widget.chapterIndex, _scrollController.offset));
  }

  String _stripStyles(String html) {
    // Remove <style> tags and their content
    final styleRegex = RegExp(
      r'<style[^>]*>[\s\S]*?</style>',
      caseSensitive: false,
    );
    return html.replaceAll(styleRegex, '');
  }

  Color _getTextColor(ThemeOption theme, bool highContrast) {
    Color baseColor;
    switch (theme) {
      case ThemeOption.light:
        baseColor = Colors.black;
        break;
      case ThemeOption.dark:
        baseColor = Colors.white;
        break;
      case ThemeOption.device:
        baseColor = Colors.black;
        break;
    }

    if (highContrast) {
      return theme == ThemeOption.dark ? Colors.white : Colors.black;
    }
    return baseColor;
  }

  @override
  Widget build(BuildContext context) {
    final Color textColor = _getTextColor(
      widget.settingsState.appSettings.display.theme,
      widget.settingsState.appSettings.accessibility.highContrast,
    );
    final int r = (textColor.r * 255).round();
    final int g = (textColor.g * 255).round();
    final int b = (textColor.b * 255).round();
    final double a = textColor.a;
    final Color footerColor = textColor.withValues(alpha: 0.7);
    final int fr = (footerColor.r * 255).round();
    final int fg = (footerColor.g * 255).round();
    final int fb = (footerColor.b * 255).round();
    final double fa = footerColor.a;
    final textAlign = switch (widget.settingsState.appSettings.display.textAlign) {
      TextAlignOption.left => TextAlign.left,
      TextAlignOption.right => TextAlign.right,
      TextAlignOption.center => TextAlign.center,
      TextAlignOption.justify => TextAlign.justify,
    };
    Widget? customWidgetBuilder(dynamic element) {
      final text = element.text?.trim();
      if (text == null || text.isEmpty) return null;
      final localName = element.localName as String?;
      TextStyle baseStyle = TextStyle(
        fontFamily: widget.settingsState.appSettings.accessibility.dyslexicFont
            ? 'OpenDyslexic'
            : widget.settingsState.appSettings.display.fontFamily.displayName,
        fontSize: widget.settingsState.appSettings.display.fontSize,
        fontWeight: widget.settingsState.appSettings.display.fontWeight == 'bold'
            ? FontWeight.bold
            : FontWeight.normal,
        height: widget.settingsState.appSettings.display.lineHeight,
        letterSpacing: widget.settingsState.appSettings.display.letterSpacing,
        color: Color.fromARGB((a * 255).round(), r, g, b),
      );
      switch (localName) {
        case 'body':
          return Text(text, style: baseStyle, textAlign: textAlign);
        case 'p':
          return Padding(
            padding: EdgeInsets.only(
              bottom: widget.settingsState.appSettings.display.paragraphSpacing * 10,
            ),
            child: Text(text, style: baseStyle, textAlign: textAlign),
          );
        case 'h1':
          final headerStyle = baseStyle.copyWith(
            fontSize:
                widget.settingsState.appSettings.display.fontSize *
                widget.settingsState.appSettings.display.headerFontSizeMultiplier,
            fontWeight: FontWeight.bold,
          );
          return Padding(
            padding: EdgeInsets.only(
              top: widget.settingsState.appSettings.display.headerMarginTop,
              bottom: widget.settingsState.appSettings.display.headerMarginBottom,
            ),
            child: Text(text, style: headerStyle, textAlign: textAlign),
          );
        case 'h2':
          final headerStyle = baseStyle.copyWith(
            fontSize:
                widget.settingsState.appSettings.display.fontSize *
                (widget.settingsState.appSettings.display.headerFontSizeMultiplier -
                    0.1),
            fontWeight: FontWeight.bold,
          );
          return Padding(
            padding: EdgeInsets.only(
              top: widget.settingsState.appSettings.display.headerMarginTop,
              bottom: widget.settingsState.appSettings.display.headerMarginBottom,
            ),
            child: Text(text, style: headerStyle, textAlign: textAlign),
          );
        case 'h3':
          final headerStyle = baseStyle.copyWith(
            fontSize:
                widget.settingsState.appSettings.display.fontSize *
                (widget.settingsState.appSettings.display.headerFontSizeMultiplier -
                    0.2),
            fontWeight: FontWeight.bold,
          );
          return Padding(
            padding: EdgeInsets.only(
              top: widget.settingsState.appSettings.display.headerMarginTop,
              bottom: widget.settingsState.appSettings.display.headerMarginBottom,
            ),
            child: Text(text, style: headerStyle, textAlign: textAlign),
          );
        case 'footer':
          final footerStyle = baseStyle.copyWith(
            fontSize: widget.settingsState.appSettings.display.fontSize * 0.9,
            color: Color.fromARGB((fa * 255).round(), fr, fg, fb),
          );
          return Padding(
            padding: EdgeInsets.only(
              top: widget.settingsState.appSettings.display.footerMarginTop,
              bottom: widget.settingsState.appSettings.display.footerMarginBottom,
            ),
            child: Text(text, style: footerStyle, textAlign: textAlign),
          );
        default:
          return Text(text, style: baseStyle, textAlign: textAlign);
      }
    }

    return SizedBox.expand(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          if (widget.settingsState.appSettings.behavior.navigationMethod ==
              NavigationMethod.tap) {
            // don't toggle
          } else {
            widget.onToggleBars();
          }
        },
        onTapDown: widget.onTapDown,
        onHorizontalDragEnd: widget.onHorizontalDragEnd,
        onVerticalDragEnd: widget.onVerticalDragEnd,
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
                    _stripStyles(widget.controller.getFullChapterContent()),
                    customWidgetBuilder: customWidgetBuilder,
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
