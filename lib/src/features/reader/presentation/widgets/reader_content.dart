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
      TextAlignOption.left => 'left',
      TextAlignOption.right => 'right',
      TextAlignOption.center => 'center',
      TextAlignOption.justify => 'justify',
    };
    Map<String, String>? customStylesBuilder(dynamic element) {
      final localName = element.localName as String?;
      switch (localName) {
        case 'body':
          return {
            'font-family': settingsState.appSettings.accessibility.dyslexicFont
                ? 'OpenDyslexic'
                : settingsState.appSettings.display.fontFamily.displayName,
            'font-size': '${settingsState.appSettings.display.fontSize}px',
            'font-weight':
                settingsState.appSettings.display.fontWeight == 'bold'
                ? 'bold'
                : 'normal',
            'line-height': '${settingsState.appSettings.display.lineHeight}',
            'letter-spacing':
                '${settingsState.appSettings.display.letterSpacing}px',
            'text-align': textAlign,
            'color': 'rgba($r, $g, $b, $a)',
            'background-color': 'transparent',
          };
        case 'p':
          return {
            'margin-bottom':
                '${settingsState.appSettings.display.paragraphSpacing * 10}px',
          };
        case 'h1':
          return {
            'font-size':
                '${settingsState.appSettings.display.fontSize * settingsState.appSettings.display.headerFontSizeMultiplier}px',
            'font-weight': 'bold',
            'margin-top':
                '${settingsState.appSettings.display.headerMarginTop}px',
            'margin-bottom':
                '${settingsState.appSettings.display.headerMarginBottom}px',
            'color': 'rgba($r, $g, $b, $a)',
          };
        case 'h2':
          return {
            'font-size':
                '${settingsState.appSettings.display.fontSize * (settingsState.appSettings.display.headerFontSizeMultiplier - 0.1)}px',
            'font-weight': 'bold',
            'margin-top':
                '${settingsState.appSettings.display.headerMarginTop}px',
            'margin-bottom':
                '${settingsState.appSettings.display.headerMarginBottom}px',
            'color': 'rgba($r, $g, $b, $a)',
          };
        case 'h3':
          return {
            'font-size':
                '${settingsState.appSettings.display.fontSize * (settingsState.appSettings.display.headerFontSizeMultiplier - 0.2)}px',
            'font-weight': 'bold',
            'margin-top':
                '${settingsState.appSettings.display.headerMarginTop}px',
            'margin-bottom':
                '${settingsState.appSettings.display.headerMarginBottom}px',
            'color': 'rgba($r, $g, $b, $a)',
          };
        case 'footer':
          return {
            'margin-top':
                '${settingsState.appSettings.display.footerMarginTop}px',
            'margin-bottom':
                '${settingsState.appSettings.display.footerMarginBottom}px',
            'font-size':
                '${settingsState.appSettings.display.fontSize * 0.9}px',
            'color': 'rgba($fr, $fg, $fb, $fa)',
          };
        default:
          return null;
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
                  buildAsync: true,
                  rebuildTriggers: [
                    settingsState.appSettings,
                  ],
                  enableCaching: false,
                  controller.getFullChapterContent(),
                  customStylesBuilder: customStylesBuilder,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
