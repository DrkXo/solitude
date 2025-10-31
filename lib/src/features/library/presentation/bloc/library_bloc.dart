import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/ebook_entry.dart';
import '../../../../core/services/ebook_library_service.dart';

part 'library_bloc.freezed.dart';
part 'library_event.dart';
part 'library_state.dart';

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc(this._service) : super(const LibraryState.initial()) {
    on<_Started>(_onStarted);
    on<_PickEbook>(_onPickEbook);
    on<_RemoveEbook>(_onRemoveEbook);
    on<_SearchEbooks>(_onSearchEbooks);
    on<_UpdateEbook>(_onUpdateEbook);
    on<_EbooksChanged>(_onEbooksChanged);

    _subscription = _service.ebooksStream.listen((ebooks) {
      add(LibraryEvent.ebooksChanged(ebooks));
    });
  }

  final EbookLibraryService _service;
  late final StreamSubscription<List<EbookEntry>> _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  Future<void> _onStarted(_Started event, Emitter<LibraryState> emit) async {
    emit(const LibraryState.loading());
    try {
      // Service is already initialized via @PostConstruct
      emit(LibraryState.loaded(_service.getEbooks(), isAdding: false));
    } catch (e) {
      emit(LibraryState.error('Failed to load library: $e', []));
    }
  }

  Future<void> _onPickEbook(
    _PickEbook event,
    Emitter<LibraryState> emit,
  ) async {
    emit(LibraryState.loaded(_service.getEbooks(), isAdding: true));
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['epub', 'pdf', 'mobi'],
      );

      if (result != null) {
        final file = result.files.first;
        if (file.path != null) {
          await _service.addEbook(file.path!);

          emit(LibraryState.loaded(_service.getEbooks(), isAdding: false));
        } else {
          emit(LibraryState.loaded(_service.getEbooks(), isAdding: false));
        }
      } else {
        emit(LibraryState.loaded(_service.getEbooks(), isAdding: false));
      }
    } catch (e) {
      String message = 'Error reading ebook: $e';
      if (e.toString().contains('MOBI parsing not yet implemented')) {
        message = 'MOBI format detected. Full parsing support coming soon!';
      }
      emit(LibraryState.error(message, _service.getEbooks()));
    }
  }

  Future<void> _onRemoveEbook(_RemoveEbook event, Emitter<LibraryState> emit) async {
    try {
      await _service.removeEbook(event.id);
      // EbooksChanged will emit loaded
    } catch (e) {
      emit(LibraryState.error('Failed to remove ebook: $e', _service.getEbooks()));
    }
  }

  void _onSearchEbooks(_SearchEbooks event, Emitter<LibraryState> emit) {
    final results = _service.searchEbooks(event.query);
    emit(LibraryState.loaded(results, isAdding: false));
  }

  Future<void> _onUpdateEbook(_UpdateEbook event, Emitter<LibraryState> emit) async {
    try {
      await _service.updateEbook(event.entry);
      // EbooksChanged will emit loaded
    } catch (e) {
      emit(LibraryState.error('Failed to update ebook: $e', _service.getEbooks()));
    }
  }

  void _onEbooksChanged(_EbooksChanged event, Emitter<LibraryState> emit) {
    if (state is _Loaded) {
      emit(LibraryState.loaded(event.ebooks, isAdding: (state as _Loaded).isAdding));
    } else if (state is _Error) {
      emit(LibraryState.error((state as _Error).message, event.ebooks));
    } else if (state is _Initial) {
      emit(LibraryState.loaded(event.ebooks, isAdding: false));
    }
  }
}
