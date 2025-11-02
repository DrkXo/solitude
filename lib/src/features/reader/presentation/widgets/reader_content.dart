import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart' as html;

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
                html.Html(
                  data: controller.getFullChapterContent(),
                  style: {
                    'body': html.Style(
                      fontFamily:
                          settingsState.appSettings.accessibility.dyslexicFont
                          ? 'OpenDyslexic'
                          : settingsState
                                .appSettings
                                .display
                                .fontFamily
                                .displayName,
                      fontSize: html.FontSize(
                        settingsState.appSettings.display.fontSize,
                      ),
                      fontWeight:
                          settingsState.appSettings.display.fontWeight == 'bold'
                          ? FontWeight.bold
                          : FontWeight.normal,
                      lineHeight: html.LineHeight(
                        settingsState.appSettings.display.lineHeight,
                      ),
                      letterSpacing:
                          settingsState.appSettings.display.letterSpacing,
                      textAlign:
                          switch (settingsState.appSettings.display.textAlign) {
                            TextAlignOption.left => TextAlign.left,
                            TextAlignOption.right => TextAlign.right,
                            TextAlignOption.center => TextAlign.center,
                            TextAlignOption.justify => TextAlign.justify,
                          },
                      color: _getTextColor(
                        settingsState.appSettings.display.theme,
                        settingsState.appSettings.accessibility.highContrast,
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    'p': html.Style(
                      margin: html.Margins.only(
                        bottom:
                            settingsState.appSettings.display.paragraphSpacing *
                            10,
                      ),
                    ),
                    'h1': html.Style(
                      fontSize: html.FontSize(
                        settingsState.appSettings.display.fontSize *
                            settingsState
                                .appSettings
                                .display
                                .headerFontSizeMultiplier,
                      ),
                      fontWeight: FontWeight.bold,
                      margin: html.Margins.only(
                        top: settingsState.appSettings.display.headerMarginTop,
                        bottom: settingsState
                            .appSettings
                            .display
                            .headerMarginBottom,
                      ),
                      color: _getTextColor(
                        settingsState.appSettings.display.theme,
                        settingsState.appSettings.accessibility.highContrast,
                      ),
                    ),
                    'h2': html.Style(
                      fontSize: html.FontSize(
                        settingsState.appSettings.display.fontSize *
                            (settingsState
                                    .appSettings
                                    .display
                                    .headerFontSizeMultiplier -
                                0.1),
                      ),
                      fontWeight: FontWeight.bold,
                      margin: html.Margins.only(
                        top: settingsState.appSettings.display.headerMarginTop,
                        bottom: settingsState
                            .appSettings
                            .display
                            .headerMarginBottom,
                      ),
                      color: _getTextColor(
                        settingsState.appSettings.display.theme,
                        settingsState.appSettings.accessibility.highContrast,
                      ),
                    ),
                    'h3': html.Style(
                      fontSize: html.FontSize(
                        settingsState.appSettings.display.fontSize *
                            (settingsState
                                    .appSettings
                                    .display
                                    .headerFontSizeMultiplier -
                                0.2),
                      ),
                      fontWeight: FontWeight.bold,
                      margin: html.Margins.only(
                        top: settingsState.appSettings.display.headerMarginTop,
                        bottom: settingsState
                            .appSettings
                            .display
                            .headerMarginBottom,
                      ),
                      color: _getTextColor(
                        settingsState.appSettings.display.theme,
                        settingsState.appSettings.accessibility.highContrast,
                      ),
                    ),
                    'footer': html.Style(
                      margin: html.Margins.only(
                        top: settingsState.appSettings.display.footerMarginTop,
                        bottom: settingsState
                            .appSettings
                            .display
                            .footerMarginBottom,
                      ),
                      fontSize: html.FontSize(
                        settingsState.appSettings.display.fontSize * 0.9,
                      ),
                      color: _getTextColor(
                        settingsState.appSettings.display.theme,
                        settingsState.appSettings.accessibility.highContrast,
                      ).withValues(alpha: 0.7),
                    ),
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
