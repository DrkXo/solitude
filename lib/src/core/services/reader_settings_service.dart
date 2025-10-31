import 'package:injectable/injectable.dart';

import '../abstracts/base_service.dart';
import '../utils/utils.dart';
import 'db/local_db_service.dart';

@injectable
class ReaderSettingsService extends BaseService {
  final LocalDbService _localDbService;

  double _fontSize = 16.0;
  String _readingMode = 'Page';

  ReaderSettingsService({
    required LocalDbService localDbService,
  }) : _localDbService = localDbService;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    try {
      final fontSizeString = await executeDBOperation(() => _localDbService.solitude.keyValueDao.getValue('reader_font_size'));
      if (fontSizeString != null) {
        _fontSize = double.tryParse(fontSizeString) ?? 16.0;
      }
    } catch (e) {
      logger.error('Failed to load font size from database: $e');
      // Keep default
    }

    try {
      final readingMode = await executeDBOperation(() => _localDbService.solitude.keyValueDao.getValue('reader_reading_mode'));
      if (readingMode != null) {
        _readingMode = readingMode;
      }
    } catch (e) {
      logger.error('Failed to load reading mode from database: $e');
      // Keep default
    }
  }

  double get fontSize => _fontSize;

  String get readingMode => _readingMode;

  Future<void> setFontSize(double size) async {
    _fontSize = size;
    try {
      await executeDBOperation(() => _localDbService.solitude.keyValueDao.setValue(
        'reader_font_size',
        size.toString(),
      ));
    } catch (e) {
      logger.error('Failed to save font size to database: $e');
    }
  }

  Future<void> setReadingMode(String mode) async {
    _readingMode = mode;
    try {
      await executeDBOperation(() => _localDbService.solitude.keyValueDao.setValue(
        'reader_reading_mode',
        mode,
      ));
    } catch (e) {
      logger.error('Failed to save reading mode to database: $e');
    }
  }
}