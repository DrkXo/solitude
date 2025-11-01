import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../abstracts/base_service.dart';
import '../utils/utils.dart';
import 'db/local_db_service.dart';

class ThemeService extends BaseService {
  final LocalDbService _localDbService;

  ThemeMode _currentThemeMode = ThemeMode.dark;
  final Color _seedColor = const Color(0xFF262624);

  ThemeService({
    required LocalDbService localDbService,
  }) : _localDbService = localDbService;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    try {
      final modeString = await executeDBOperation(
        () => _localDbService.solitude.keyValueDao.getValue('theme_mode'),
      );
      if (modeString != null) {
        _currentThemeMode = ThemeMode.values.firstWhere(
          (mode) => mode.name == modeString,
          orElse: () => ThemeMode.dark,
        );
      }
    } catch (e) {
      logger.error('Failed to load theme settings from database: $e');
      // Keep defaults
    }
  }

  ThemeMode get currentThemeMode => _currentThemeMode;

  Color get seedColor => _seedColor;

  Future<void> setThemeMode(ThemeMode mode) async {
    _currentThemeMode = mode;
    try {
      await executeDBOperation(
        () => _localDbService.solitude.keyValueDao.setValue(
          'theme_mode',
          mode.name,
        ),
      );
    } catch (e) {
      logger.error('Failed to save theme mode to database: $e');
      // Theme mode is updated in memory, but persistence failed
    }
  }

  ThemeData getLightThemeData() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.light,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
    ).copyWith(
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
      ),
    );
  }

  ThemeData getDarkThemeData() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: Brightness.dark,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
    ).copyWith(
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
      ),
    );
  }
}
