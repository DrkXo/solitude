// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Soledad';

  @override
  String get welcomeMessage => 'Bienvenido a tu Biblioteca';

  @override
  String get noEbooksMessage => 'Aún no hay ebooks. Toca + para agregar uno.';

  @override
  String get addingBookMessage => 'Agregando libro...';

  @override
  String authorLabel(Object author) {
    return 'Autor: $author';
  }

  @override
  String chaptersLabel(Object count) {
    return 'Capítulos: $count';
  }

  @override
  String get previousChapter => 'Capítulo Anterior';

  @override
  String get nextChapter => 'Capítulo Siguiente';

  @override
  String chapterIndicator(Object current, Object total) {
    return 'Capítulo $current de $total';
  }

  @override
  String get errorTitle => 'Error';
}
