import 'package:dynamik_theme/dynamik_theme.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../utils/utils.dart';
import 'db/local_db_service.dart';

class ThemeService {
  final LocalDbService _localDbService;

  ThemeMode _currentThemeMode = ThemeMode.dark;

  ThemeService({
    required LocalDbService localDbService,
  }) : _localDbService = localDbService;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    try {
      final modeString = await _localDbService.solitude.keyValueDao.getValue(
        'theme_mode',
      );
      if (modeString != null) {
        _currentThemeMode = ThemeMode.values.firstWhere(
          (mode) => mode.name == modeString,
          orElse: () => ThemeMode.dark,
        );
      }
    } catch (e, stackTrace) {
      logger.error('Failed to load theme mode from database', e, stackTrace);
      // Keep default ThemeMode.dark
    }
  }

  ThemeMode get currentThemeMode => _currentThemeMode;

  Future<void> setThemeMode(ThemeMode mode) async {
    _currentThemeMode = mode;
    try {
      await _localDbService.solitude.keyValueDao.setValue(
        'theme_mode',
        mode.name,
      );
    } catch (e, stackTrace) {
      logger.error('Failed to save theme mode to database', e, stackTrace);
      // Theme mode is updated in memory, but persistence failed
    }
  }

  ThemeConfig getThemeConfig() {
    return ThemeConfig(
      useMaterial3: true,
      lightScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.light,
      ),
      darkScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.dark,
      ),
      defaultThemeState: _currentThemeMode == ThemeMode.dark
          ? SimpleThemeType.dark.themeState
          : SimpleThemeType.light.themeState,
      builder: (themeData) {
        return themeData.copyWith(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
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
      },
    );
  }
}
