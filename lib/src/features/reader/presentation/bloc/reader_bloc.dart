import 'package:ebook_x/ebook_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/services/ebook_library_service.dart';
import '../../../../core/services/reader_service.dart';

part 'reader_bloc.freezed.dart';
part 'reader_event.dart';
part 'reader_state.dart';

class ReaderBloc extends Bloc<ReaderEvent, ReaderState> {
  ReaderBloc({
    required ReaderService readerService,
    required EbookLibraryService libraryService,
  }) : _readerService = readerService,
       _libraryService = libraryService,
       super(_Initial()) {
    on<_Started>(_onStarted);
    on<_LoadEbook>(_onLoadEbook);
    on<_NextChapter>(_onNextChapter);
    on<_PreviousChapter>(_onPreviousChapter);
    on<_StartReading>(_onStartReading);
    on<_UpdateReadingProgress>(_onUpdateReadingProgress);
  }

  final ReaderService _readerService;
  final EbookLibraryService _libraryService;

  EbookXController? _controller;
  String? _currentEbookId;

  void _onStarted(_Started event, Emitter<ReaderState> emit) {
    // Initial state
  }

  void _onLoadEbook(_LoadEbook event, Emitter<ReaderState> emit) async {
    try {
      final entry = _libraryService.getEbook(event.ebookId);
      if (entry == null) {
        emit(ReaderState.error('Ebook not found'));
        return;
      }
      final ebook = entry.ebook;
      _currentEbookId = event.ebookId;

      _controller = EbookXController(
        ebook,
        charactersPerPage: 2000,
      );

      // Load saved reading progress
      final progress = _readerService.getReadingProgress(event.ebookId);
      if (progress != null && progress.currentChapter > 0) {
        _controller!.goToChapter(progress.currentChapter);
      }

      emit(ReaderState.loaded(_controller!, _controller!.currentChapterIndex, _controller!.currentPageIndex));
    } catch (e) {
      emit(ReaderState.error('Failed to load ebook: $e'));
    }
  }

  void _onNextChapter(_NextChapter event, Emitter<ReaderState> emit) async {
    if (_controller != null && state is _Loaded) {
      _controller!.nextPage();
      emit(ReaderState.loaded(_controller!, _controller!.currentChapterIndex, _controller!.currentPageIndex));
      await _saveReadingProgress();
    }
  }

  void _onPreviousChapter(
    _PreviousChapter event,
    Emitter<ReaderState> emit,
  ) async {
    if (_controller != null && state is _Loaded) {
      _controller!.previousPage();
      emit(ReaderState.loaded(_controller!, _controller!.currentChapterIndex, _controller!.currentPageIndex));
      await _saveReadingProgress();
    }
  }

  void _onStartReading(_StartReading event, Emitter<ReaderState> emit) {
    if (_controller != null && state is _Loaded) {
      _saveReadingProgress();
    }
  }

  void _onUpdateReadingProgress(
    _UpdateReadingProgress event,
    Emitter<ReaderState> emit,
  ) {
    if (_controller != null && state is _Loaded) {
      _controller!.goToChapter(event.chapterIndex);
      emit(ReaderState.loaded(_controller!, _controller!.currentChapterIndex, _controller!.currentPageIndex));
      _saveReadingProgress();
    }
  }

  Future<void> _saveReadingProgress() async {
    if (_controller != null && state is _Loaded && _currentEbookId != null) {
      await _readerService.updateReadingProgress(
        _currentEbookId!,
        _controller!.currentChapterIndex,
      );
    }
  }
}
