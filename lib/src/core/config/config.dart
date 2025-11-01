import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:solitude/src/core/config/config.config.dart';

part 'injection.dart';
part 'keyboard.dart';

/// Application configuration constants
class AppConfig {
  static const int maxFileSizeBytes = 100 * 1024 * 1024; // 100MB
}
