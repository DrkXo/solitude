import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/reader_settings_service.dart';
import '../../../../core/services/theme_service.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@lazySingleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ReaderSettingsService _readerSettingsService;
  final ThemeService _themeService;

  SettingsBloc(this._readerSettingsService, this._themeService)
    : super(SettingsState(settings: SettingsModel(
        fontSize: _readerSettingsService.fontSize,
        readingMode: _readerSettingsService.readingMode,
        themeMode: _themeService.currentThemeMode,
      ))) {
    on<SettingsEvent>((event, emit) async {
      if (event is _FontSizeChanged) {
        await _onFontSizeChanged(event, emit);
      } else if (event is _ReadingModeChanged) {
        await _onReadingModeChanged(event, emit);
      } else if (event is _ThemeModeChanged) {
        await _onThemeModeChanged(event, emit);
      }
    });
  }

  Future<void> _onFontSizeChanged(
    _FontSizeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _readerSettingsService.setFontSize(event.fontSize);
    emit(
      state.copyWith(
        settings: state.settings.copyWith(fontSize: event.fontSize),
      ),
    );
  }

  Future<void> _onReadingModeChanged(
    _ReadingModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _readerSettingsService.setReadingMode(event.readingMode);
    emit(
      state.copyWith(
        settings: state.settings.copyWith(readingMode: event.readingMode),
      ),
    );
  }

  Future<void> _onThemeModeChanged(
    _ThemeModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _themeService.setThemeMode(event.themeMode);
    emit(
      state.copyWith(
        settings: state.settings.copyWith(themeMode: event.themeMode),
      ),
    );
  }
}
