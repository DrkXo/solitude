import 'package:injectable/injectable.dart';

import '../utils/utils.dart';
import 'db/local_db_service.dart';

@injectable
class ReaderSettingsService {
  final LocalDbService _localDbService;

  double _fontSize = 16.0;
  String _readingMode = 'Page';

  ReaderSettingsService({
    required LocalDbService localDbService,
  }) : _localDbService = localDbService;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    try {
      final fontSizeString = await _localDbService.solitude.keyValueDao.getValue(
        'reader_font_size',
      );
      if (fontSizeString != null) {
        _fontSize = double.tryParse(fontSizeString) ?? 16.0;
      }

      final readingMode = await _localDbService.solitude.keyValueDao.getValue(
        'reader_reading_mode',
      );
      if (readingMode != null) {
        _readingMode = readingMode;
      }
    } catch (e, stackTrace) {
      logger.error('Failed to load reader settings from database', e, stackTrace);
      // Keep defaults
    }
  }

  double get fontSize => _fontSize;

  String get readingMode => _readingMode;

  Future<void> setFontSize(double size) async {
    _fontSize = size;
    try {
      await _localDbService.solitude.keyValueDao.setValue(
        'reader_font_size',
        size.toString(),
      );
    } catch (e, stackTrace) {
      logger.error('Failed to save font size to database', e, stackTrace);
    }
  }

  Future<void> setReadingMode(String mode) async {
    _readingMode = mode;
    try {
      await _localDbService.solitude.keyValueDao.setValue(
        'reader_reading_mode',
        mode,
      );
    } catch (e, stackTrace) {
      logger.error('Failed to save reading mode to database', e, stackTrace);
    }
  }
}