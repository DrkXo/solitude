// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Solitude';

  @override
  String get welcomeMessage => 'Bienvenue dans votre Bibliothèque';

  @override
  String get noEbooksMessage =>
      'Aucun ebook encore. Appuyez sur + pour en ajouter un.';

  @override
  String get addingBookMessage => 'Ajout du livre...';

  @override
  String authorLabel(Object author) {
    return 'Auteur: $author';
  }

  @override
  String chaptersLabel(Object count) {
    return 'Chapitres: $count';
  }

  @override
  String get previousChapter => 'Chapitre Précédent';

  @override
  String get nextChapter => 'Chapitre Suivant';

  @override
  String chapterIndicator(Object current, Object total) {
    return 'Chapitre $current de $total';
  }

  @override
  String get errorTitle => 'Erreur';
}
