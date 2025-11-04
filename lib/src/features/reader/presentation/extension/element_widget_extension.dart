import 'package:flutter/material.dart';
import 'package:solitude/src/features/settings/data/models/settings_constants.dart';
import 'package:solitude/src/features/settings/presentation/bloc/settings_bloc.dart';

extension StringExtensions on String {
  String stripStyles() {
    final styleTagRegex = RegExp(
      r'<style[^>]*>[\s\S]*?</style>',
      caseSensitive: false,
    );
    final inlineStyleRegex = RegExp(
      '\\s+style\\s*=\\s*(["\'])(.*?)\\1',
      caseSensitive: false,
    );
    final pageRuleRegex = RegExp(
      r'@page\s*\{[\s\S]*?\}',
      caseSensitive: false,
    );
    return replaceAll(styleTagRegex, '').replaceAll(inlineStyleRegex, '').replaceAll(pageRuleRegex, '');
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
      case 'h4':
        final headerStyle = baseStyle.copyWith(
          fontSize:
              settingsState.appSettings.display.fontSize *
              (settingsState.appSettings.display.headerFontSizeMultiplier -
                  0.3),
          fontWeight: FontWeight.bold,
        );
        return Padding(
          padding: EdgeInsets.only(
            top: settingsState.appSettings.display.headerMarginTop,
            bottom: settingsState.appSettings.display.headerMarginBottom,
          ),
          child: Text(text, style: headerStyle, textAlign: textAlign),
        );
      case 'h5':
        final headerStyle = baseStyle.copyWith(
          fontSize:
              settingsState.appSettings.display.fontSize *
              (settingsState.appSettings.display.headerFontSizeMultiplier -
                  0.4),
          fontWeight: FontWeight.bold,
        );
        return Padding(
          padding: EdgeInsets.only(
            top: settingsState.appSettings.display.headerMarginTop,
            bottom: settingsState.appSettings.display.headerMarginBottom,
          ),
          child: Text(text, style: headerStyle, textAlign: textAlign),
        );
      case 'h6':
        final headerStyle = baseStyle.copyWith(
          fontSize:
              settingsState.appSettings.display.fontSize *
              (settingsState.appSettings.display.headerFontSizeMultiplier -
                  0.5),
          fontWeight: FontWeight.bold,
        );
        return Padding(
          padding: EdgeInsets.only(
            top: settingsState.appSettings.display.headerMarginTop,
            bottom: settingsState.appSettings.display.headerMarginBottom,
          ),
          child: Text(text, style: headerStyle, textAlign: textAlign),
        );
      case 'div':
        return Text(text, style: baseStyle, textAlign: textAlign);
      case 'blockquote':
        return Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
          child: Text(
            text,
            style: baseStyle.copyWith(fontStyle: FontStyle.italic),
            textAlign: textAlign,
          ),
        );
      case 'em':
        return Text(
          text,
          style: baseStyle.copyWith(fontStyle: FontStyle.italic),
          textAlign: textAlign,
        );
      case 'strong':
        return Text(
          text,
          style: baseStyle.copyWith(fontWeight: FontWeight.bold),
          textAlign: textAlign,
        );
      case 'pre':
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            text,
            style: baseStyle.copyWith(
              fontFamily: 'monospace',
              fontSize: settingsState.appSettings.display.fontSize * 0.9,
            ),
            textAlign: TextAlign.left,
          ),
        );
      case 'code':
        return Text(
          text,
          style: baseStyle.copyWith(
            fontFamily: 'monospace',
            fontSize: settingsState.appSettings.display.fontSize * 0.9,
            backgroundColor: textColor.withValues(alpha: 0.1),
          ),
          textAlign: textAlign,
        );
      case 'li':
        return Padding(
          padding: EdgeInsets.only(left: 16.0, bottom: 4.0),
          child: Text(
            '• $text',
            style: baseStyle,
            textAlign: textAlign,
          ),
        );
      case 'span':
        return Text(text, style: baseStyle, textAlign: textAlign);
      case 'a':
        return Text(
          text,
          style: baseStyle.copyWith(
            color: textColor.withValues(alpha: 0.8),
            decoration: TextDecoration.underline,
          ),
          textAlign: textAlign,
        );
      case 'img':
        // For now, return a placeholder - full image loading would require
        // accessing ebook resources through the controller
        final alt = this.attributes?['alt'] ?? 'Image';
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: textColor.withValues(alpha: 0.3)),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Text(
              '[$alt]',
              style: baseStyle.copyWith(
                fontStyle: FontStyle.italic,
                color: textColor.withValues(alpha: 0.6),
              ),
            ),
          ),
        );
      case 'br':
        return SizedBox(height: settingsState.appSettings.display.fontSize * 0.5);
      case 'sup':
        return Transform.translate(
          offset: Offset(0, -settingsState.appSettings.display.fontSize * 0.3),
          child: Text(
            text,
            style: baseStyle.copyWith(
              fontSize: settingsState.appSettings.display.fontSize * 0.8,
            ),
            textAlign: textAlign,
          ),
        );
      case 'sub':
        return Transform.translate(
          offset: Offset(0, settingsState.appSettings.display.fontSize * 0.2),
          child: Text(
            text,
            style: baseStyle.copyWith(
              fontSize: settingsState.appSettings.display.fontSize * 0.8,
            ),
            textAlign: textAlign,
          ),
        );
      case 'mark':
        return Text(
          text,
          style: baseStyle.copyWith(
            backgroundColor: textColor.withValues(alpha: 0.2),
          ),
          textAlign: textAlign,
        );
      case 'small':
        return Text(
          text,
          style: baseStyle.copyWith(
            fontSize: settingsState.appSettings.display.fontSize * 0.9,
          ),
          textAlign: textAlign,
        );
      case 'hr':
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Divider(
            color: textColor.withValues(alpha: 0.3),
            thickness: 1.0,
          ),
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
