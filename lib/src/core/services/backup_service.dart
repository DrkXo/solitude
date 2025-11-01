import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_writer/yaml_writer.dart';

import '../../features/settings/data/models/portable_settings.dart';
import '../abstracts/base_service.dart';
import 'ebook_library_service.dart';
import 'reader_settings_service.dart';
import 'theme_service.dart';

enum ExportFormat {
  json(mimeType: 'application/json', name: 'JSON'),
  yaml(mimeType: 'application/x-yaml', name: 'YAML');

  const ExportFormat({required this.mimeType, required this.name});

  final String mimeType;
  final String name;

  String get extension => name.toLowerCase();
}

@injectable
class BackupService extends BaseService {
  final ReaderSettingsService _readerSettingsService;
  final ThemeService _themeService;
  // ignore: unused_field
  final EbookLibraryService _ebookLibraryService;

  BackupService(
    this._readerSettingsService,
    this._themeService,
    this._ebookLibraryService,
  );

  dynamic _yamlToMap(dynamic yaml) {
    if (yaml is YamlMap) {
      return yaml.map((key, value) => MapEntry(key.toString(), _yamlToMap(value)));
    } else if (yaml is YamlList) {
      return yaml.map(_yamlToMap).toList();
    } else {
      return yaml;
    }
  }

  /// Exports all settings and reading progress to a file
  Future<String> exportSettings({
    required ExportFormat format,
    String? fileName,
  }) async {
    final settings = await _collectSettings();

    final directory = await getApplicationDocumentsDirectory();
    final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-');
    final name = fileName ?? 'solitude_backup_$timestamp';
    final extension = format.extension;
    final filePath = '${directory.path}/$name.$extension';

    final file = File(filePath);
    final content = format == ExportFormat.yaml
        ? YamlWriter().write(settings.toJson())
        : jsonEncode(settings.toJson());

    await file.writeAsString(content);
    return filePath;
  }

  /// Imports settings and reading progress from a file
  Future<void> importSettings(String filePath) async {
    final file = File(filePath);
    if (!await file.exists()) {
      throw Exception('Backup file not found: $filePath');
    }

    final content = await file.readAsString();
    final isYaml = filePath.endsWith('.yaml') || filePath.endsWith('.yml');
    final data = isYaml ? _yamlToMap(loadYaml(content)) as Map<String, dynamic> : jsonDecode(content);

    final settings = PortableSettings.fromJson(data);

    // Version check
    if (settings.version > 1) {
      throw Exception(
        'Backup file version ${settings.version} is not supported. Current supported version: 1',
      );
    }

    await _applySettings(settings);
  }

  Future<PortableSettings> _collectSettings() async {
    // Collect app settings
    final appSettings = AppSettings(
      fontSize: _readerSettingsService.fontSize,
      readingMode: _readerSettingsService.readingMode,
      themeMode: _themeService.currentThemeMode.name,
    );

    return PortableSettings(
      version: 1,
      appSettings: appSettings,

      exportDate: DateTime.now(),
    );
  }

  Future<void> _applySettings(PortableSettings settings) async {
    // Apply app settings
    await _readerSettingsService.setFontSize(settings.appSettings.fontSize);
    await _readerSettingsService.setReadingMode(
      settings.appSettings.readingMode,
    );

    final themeMode = ThemeMode.values.firstWhere(
      (mode) => mode.name == settings.appSettings.themeMode,
      orElse: () => ThemeMode.system,
    );
    await _themeService.setThemeMode(themeMode);

    // Library stats are read-only, no need to apply
  }
}
