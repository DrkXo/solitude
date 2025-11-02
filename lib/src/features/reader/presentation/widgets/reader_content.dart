import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

import '../../../settings/data/models/settings_constants.dart';
import '../../../settings/presentation/bloc/settings_bloc.dart';

class ReaderContent extends StatelessWidget {
  final dynamic controller;
  final SettingsState settingsState;
  final ScrollController scrollController;
  final VoidCallback onToggleBars;
  final Function(TapDownDetails) onTapDown;
  final Function(DragEndDetails) onHorizontalDragEnd;
  final Function(DragEndDetails) onVerticalDragEnd;

  const ReaderContent({
    super.key,
    required this.controller,
    required this.settingsState,
    required this.scrollController,
    required this.onToggleBars,
    required this.onTapDown,
    required this.onHorizontalDragEnd,
    required this.onVerticalDragEnd,
  });

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
      settingsState.appSettings.display.theme,
      settingsState.appSettings.accessibility.highContrast,
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
    final textAlign = switch (settingsState.appSettings.display.textAlign) {
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
        fontFamily: settingsState.appSettings.accessibility.dyslexicFont
            ? 'OpenDyslexic'
            : settingsState.appSettings.display.fontFamily.displayName,
        fontSize: settingsState.appSettings.display.fontSize,
        fontWeight: settingsState.appSettings.display.fontWeight == 'bold'
            ? FontWeight.bold
            : FontWeight.normal,
        height: settingsState.appSettings.display.lineHeight,
        letterSpacing: settingsState.appSettings.display.letterSpacing,
        color: Color.fromARGB((a * 255).round(), r, g, b),
      );
      switch (localName) {
        case 'body':
          return Text(text, style: baseStyle, textAlign: textAlign);
        case 'p':
          return Padding(
            padding: EdgeInsets.only(
              bottom: settingsState.appSettings.display.paragraphSpacing * 10,
            ),
            child: Text(text, style: baseStyle, textAlign: textAlign),
          );
        case 'h1':
          final headerStyle = baseStyle.copyWith(
            fontSize:
                settingsState.appSettings.display.fontSize *
                settingsState.appSettings.display.headerFontSizeMultiplier,
            fontWeight: FontWeight.bold,
          );
          return Padding(
            padding: EdgeInsets.only(
              top: settingsState.appSettings.display.headerMarginTop,
              bottom: settingsState.appSettings.display.headerMarginBottom,
            ),
            child: Text(text, style: headerStyle, textAlign: textAlign),
          );
        case 'h2':
          final headerStyle = baseStyle.copyWith(
            fontSize:
                settingsState.appSettings.display.fontSize *
                (settingsState.appSettings.display.headerFontSizeMultiplier -
                    0.1),
            fontWeight: FontWeight.bold,
          );
          return Padding(
            padding: EdgeInsets.only(
              top: settingsState.appSettings.display.headerMarginTop,
              bottom: settingsState.appSettings.display.headerMarginBottom,
            ),
            child: Text(text, style: headerStyle, textAlign: textAlign),
          );
        case 'h3':
          final headerStyle = baseStyle.copyWith(
            fontSize:
                settingsState.appSettings.display.fontSize *
                (settingsState.appSettings.display.headerFontSizeMultiplier -
                    0.2),
            fontWeight: FontWeight.bold,
          );
          return Padding(
            padding: EdgeInsets.only(
              top: settingsState.appSettings.display.headerMarginTop,
              bottom: settingsState.appSettings.display.headerMarginBottom,
            ),
            child: Text(text, style: headerStyle, textAlign: textAlign),
          );
        case 'footer':
          final footerStyle = baseStyle.copyWith(
            fontSize: settingsState.appSettings.display.fontSize * 0.9,
            color: Color.fromARGB((fa * 255).round(), fr, fg, fb),
          );
          return Padding(
            padding: EdgeInsets.only(
              top: settingsState.appSettings.display.footerMarginTop,
              bottom: settingsState.appSettings.display.footerMarginBottom,
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
          if (settingsState.appSettings.behavior.navigationMethod ==
              NavigationMethod.tap) {
            // don't toggle
          } else {
            onToggleBars();
          }
        },
        onTapDown: onTapDown,
        onHorizontalDragEnd: onHorizontalDragEnd,
        onVerticalDragEnd: onVerticalDragEnd,
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Directionality(
            textDirection:
                settingsState.appSettings.behavior.readingDirection ==
                    ReadingDirection.rtl
                ? TextDirection.rtl
                : TextDirection.ltr,
            child: ListView(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              children: [
                HtmlWidget(
                  enableCaching: false,
                  buildAsync: true,
                  rebuildTriggers: [
                    settingsState.appSettings,
                  ],
                  controller.getFullChapterContent(),
                  customWidgetBuilder: customWidgetBuilder,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
