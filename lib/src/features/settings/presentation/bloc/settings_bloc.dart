import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/reader_settings_service.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ReaderSettingsService _readerSettingsService;

  SettingsBloc(this._readerSettingsService)
      : super(SettingsState(
          fontSize: _readerSettingsService.fontSize,
          readingMode: _readerSettingsService.readingMode,
        )) {
    on<SettingsEvent>((event, emit) {
      event.map(
        fontSizeChanged: (e) => _onFontSizeChanged(e, emit),
        readingModeChanged: (e) => _onReadingModeChanged(e, emit),
      );
    });
  }

  Future<void> _onFontSizeChanged(
    _FontSizeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _readerSettingsService.setFontSize(event.fontSize);
    emit(state.copyWith(fontSize: event.fontSize));
  }

  Future<void> _onReadingModeChanged(
    _ReadingModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    await _readerSettingsService.setReadingMode(event.readingMode);
    emit(state.copyWith(readingMode: event.readingMode));
  }
}