// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Solitude';

  @override
  String get welcomeMessage => 'Welcome to your Library';

  @override
  String get noEbooksMessage => 'No ebooks yet. Tap + to add one.';

  @override
  String get addingBookMessage => 'Adding book...';

  @override
  String authorLabel(Object author) {
    return 'Author: $author';
  }

  @override
  String chaptersLabel(Object count) {
    return 'Chapters: $count';
  }

  @override
  String get previousChapter => 'Previous Chapter';

  @override
  String get nextChapter => 'Next Chapter';

  @override
  String chapterIndicator(Object current, Object total) {
    return 'Chapter $current of $total';
  }

  @override
  String get errorTitle => 'Error';
}
