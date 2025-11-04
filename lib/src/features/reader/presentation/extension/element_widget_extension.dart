import 'package:flutter/material.dart';
import 'package:solitude/src/features/settings/data/models/settings_constants.dart';
import 'package:solitude/src/features/settings/presentation/bloc/settings_bloc.dart';

extension StringExtensions on String {
  String stripStyles() {
    final styleRegex = RegExp(
      r'<style[^>]*>[\s\S]*?</style>',
      caseSensitive: false,
    );
    return replaceAll(styleRegex, '');
  }
}

extension ElementWidgetExtension on dynamic {
  Widget? toCustomWidget({
    required SettingsState settingsState,
  }) {
    final text = this.text?.trim();
    if (text == null || text.isEmpty) return null;
    final localName = this.localName as String?;

    // Compute textAlign
    final textAlign = switch (settingsState.appSettings.display.textAlign) {
      TextAlignOption.left => TextAlign.left,
      TextAlignOption.right => TextAlign.right,
      TextAlignOption.center => TextAlign.center,
      TextAlignOption.justify => TextAlign.justify,
    };

    // Compute textColor
    Color baseColor;
    switch (settingsState.appSettings.display.theme) {
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
    final textColor = settingsState.appSettings.accessibility.highContrast
        ? (settingsState.appSettings.display.theme == ThemeOption.dark
              ? Colors.white
              : Colors.black)
        : baseColor;

    // Compute footerColor
    final footerColor = textColor.withValues(alpha: 0.7);
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
      color: textColor,
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
          color: footerColor,
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
}
