import 'dart:async';

import 'package:ebook_x/ebook_x.dart';
import 'package:ebook_x/models/bookmark.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/services/app_settings_service.dart';
import '../../../../core/services/ebook_library_service.dart';
import '../../../../core/services/reader_service.dart';

part 'reader_bloc.freezed.dart';

@freezed
abstract class ReaderEvent with _$ReaderEvent {
  const factory ReaderEvent.started() = _Started;
  const factory ReaderEvent.loadEbook(
    String ebookId, {
    String? coverImage,
  }) = _LoadEbook;
  const factory ReaderEvent.nextChapter() = _NextChapter;
  const factory ReaderEvent.previousChapter() = _PreviousChapter;
  const factory ReaderEvent.nextPage() = _NextPage;
  const factory ReaderEvent.previousPage() = _PreviousPage;
  const factory ReaderEvent.addBookmark(String title) = _AddBookmark;
  const factory ReaderEvent.removeBookmark(int index) = _RemoveBookmark;
  const factory ReaderEvent.goToBookmark(int index) = _GoToBookmark;
  const factory ReaderEvent.startReading() = _StartReading;
  const factory ReaderEvent.updateReadingProgress(int chapterIndex) =
      _UpdateReadingProgress;
  const factory ReaderEvent.updateChapterOffset(
    int chapterIndex,
    double offset,
  ) = _UpdateChapterOffset;
  const factory ReaderEvent.toggleBars() = _ToggleBars;
}

@freezed
abstract class ReaderState with _$ReaderState {
  const factory ReaderState.initial() = _Initial;
  const factory ReaderState.loading(String? coverImagePath) = _Loading;
  const factory ReaderState.loaded(
    EbookXController controller,
    int currentChapterIndex,
    int currentPageIndex,
    Map<int, double> chapterOffsets,
    List<Bookmark> bookmarks,
    bool showBars,
  ) = _Loaded;
  const factory ReaderState.error(String message) = _Error;
}

class ReaderBloc extends Bloc<ReaderEvent, ReaderState> {
  ReaderBloc({
    required ReaderService readerService,
    required EbookLibraryService libraryService,
    required AppSettingsService appSettingsService,
  }) : _readerService = readerService,
       _libraryService = libraryService,
       _appSettingsService = appSettingsService,
       super(ReaderState.initial()) {
    on<_Started>(_onStarted);
    on<_LoadEbook>(_onLoadEbook);
    on<_NextChapter>(_onNextChapter);
    on<_PreviousChapter>(_onPreviousChapter);
    on<_NextPage>(_onNextPage);
    on<_PreviousPage>(_onPreviousPage);
    on<_AddBookmark>(_onAddBookmark);
    on<_RemoveBookmark>(_onRemoveBookmark);
    on<_GoToBookmark>(_onGoToBookmark);
    on<_StartReading>(_onStartReading);
    on<_UpdateReadingProgress>(_onUpdateReadingProgress);
    on<_UpdateChapterOffset>(_onUpdateChapterOffset);
    on<_ToggleBars>(_onToggleBars);
  }

  final ReaderService _readerService;
  final EbookLibraryService _libraryService;
  final AppSettingsService _appSettingsService;

  EbookXController? _controller;
  String? _currentEbookId;
  Timer? _saveProgressTimer;

  void _onStarted(_Started event, Emitter<ReaderState> emit) {
    // Initial state
  }

  void _onLoadEbook(_LoadEbook event, Emitter<ReaderState> emit) async {
    if (event.coverImage != null) {
      emit(ReaderState.loading(event.coverImage));
    }
    try {
      final entry = _libraryService.getEbook(event.ebookId);
      if (entry == null) {
        emit(ReaderState.error('Ebook not found'));
        return;
      }
      emit(ReaderState.loading(entry.coverImagePath));

      _currentEbookId = event.ebookId;

      _controller = EbookXController(
        entry.ebook,
      );

      // Load saved reading progress if rememberLastPosition is enabled
      final progress =
          _appSettingsService.appSettings.behavior.rememberLastPosition
          ? _readerService.getReadingProgress(event.ebookId)
          : null;
      Map<int, double> chapterOffsets = {};
      if (progress != null) {
        if (progress.currentChapter > 0) {
          _controller!.goToChapter(progress.currentChapter);
        }
        if (progress.currentPage > 0) {
          _controller!.goToPage(progress.currentPage);
        }
        // Load bookmarks
        for (final bookmark in progress.bookmarks) {
          _controller!.goToChapter(bookmark.chapterIndex);
          _controller!.goToPage(bookmark.pageIndex);
          _controller!.addBookmark(bookmark.title);
        }
        // Go back to current position
        if (progress.currentChapter > 0) {
          _controller!.goToChapter(progress.currentChapter);
        }
        if (progress.currentPage > 0) {
          _controller!.goToPage(progress.currentPage);
        }
        chapterOffsets[progress.currentChapter] = progress.pageOffset;
      }

      _emitLoadedState(emit, chapterOffsets: chapterOffsets);
    } catch (e) {
      emit(ReaderState.error('Failed to load ebook: $e'));
    }
  }

  void _onNextChapter(_NextChapter event, Emitter<ReaderState> emit) async {
    if (_controller != null && state is _Loaded) {
      final nextChapterIndex = _controller!.currentChapterIndex + 1;
      if (nextChapterIndex < _controller!.totalChapters) {
        _controller!.goToChapter(nextChapterIndex);
        _emitLoadedState(emit);
        _saveReadingProgress();
      }
    }
  }

  void _onPreviousChapter(
    _PreviousChapter event,
    Emitter<ReaderState> emit,
  ) async {
    if (_controller != null && state is _Loaded) {
      final prevChapterIndex = _controller!.currentChapterIndex - 1;
      if (prevChapterIndex >= 0) {
        _controller!.goToChapter(prevChapterIndex);
        _emitLoadedState(emit);
        _saveReadingProgress();
      }
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
      _emitLoadedState(emit);
      _saveReadingProgress();
    }
  }

  void _onUpdateChapterOffset(
    _UpdateChapterOffset event,
    Emitter<ReaderState> emit,
  ) {
    if (state is _Loaded) {
      final newOffsets = Map<int, double>.from(
        (state as _Loaded).chapterOffsets,
      );
      newOffsets[event.chapterIndex] = event.offset;
      emit(
        ReaderState.loaded(
          (state as _Loaded).controller,
          (state as _Loaded).currentChapterIndex,
          (state as _Loaded).currentPageIndex,
          newOffsets,
          (state as _Loaded).bookmarks,
          (state as _Loaded).showBars,
        ),
      );
      _saveReadingProgress();
    }
  }

  void _onToggleBars(_ToggleBars event, Emitter<ReaderState> emit) {
    if (state is _Loaded) {
      final loaded = state as _Loaded;
      emit(loaded.copyWith(showBars: !loaded.showBars));
    }
  }

  void _onNextPage(_NextPage event, Emitter<ReaderState> emit) {
    if (_controller != null && state is _Loaded) {
      final success = _controller!.nextPage();
      if (success) {
        _emitLoadedState(emit);
        _saveReadingProgress();
      }
    }
  }

  void _onPreviousPage(_PreviousPage event, Emitter<ReaderState> emit) {
    if (_controller != null && state is _Loaded) {
      final success = _controller!.previousPage();
      if (success) {
        _emitLoadedState(emit);
        _saveReadingProgress();
      }
    }
  }

  void _onAddBookmark(_AddBookmark event, Emitter<ReaderState> emit) async {
    if (_controller != null && state is _Loaded && _currentEbookId != null) {
      _controller!.addBookmark(event.title);
      final offsets = (state as _Loaded).chapterOffsets;
      await _readerService.updateReadingProgress(
        _currentEbookId!,
        _controller!.currentChapterIndex,
        currentPage: _controller!.currentPageIndex,
        pageOffset: offsets[_controller!.currentChapterIndex] ?? 0.0,
        bookmarks: _controller!.bookmarks,
      );
      _emitLoadedState(emit);
    }
  }

  void _onRemoveBookmark(
    _RemoveBookmark event,
    Emitter<ReaderState> emit,
  ) async {
    if (_controller != null && state is _Loaded && _currentEbookId != null) {
      _controller!.removeBookmark(event.index);
      final offsets = (state as _Loaded).chapterOffsets;
      await _readerService.updateReadingProgress(
        _currentEbookId!,
        _controller!.currentChapterIndex,
        currentPage: _controller!.currentPageIndex,
        pageOffset: offsets[_controller!.currentChapterIndex] ?? 0.0,
        bookmarks: _controller!.bookmarks,
      );
      _emitLoadedState(emit);
    }
  }

  void _onGoToBookmark(_GoToBookmark event, Emitter<ReaderState> emit) {
    if (_controller != null && state is _Loaded) {
      _controller!.goToBookmark(event.index);
      _emitLoadedState(emit);
      _saveReadingProgress();
    }
  }

  void _saveReadingProgress() {
    _saveProgressTimer?.cancel();
    _saveProgressTimer = Timer(const Duration(seconds: 1), () async {
      if (_controller != null && state is _Loaded && _currentEbookId != null) {
        final offsets = (state as _Loaded).chapterOffsets;
        await _readerService.updateReadingProgress(
          _currentEbookId!,
          _controller!.currentChapterIndex,
          currentPage: _controller!.currentPageIndex,
          pageOffset: offsets[_controller!.currentChapterIndex] ?? 0.0,
          bookmarks: _controller!.bookmarks,
        );
      }
    });
  }

  void _emitLoadedState(
    Emitter<ReaderState> emit, {
    Map<int, double>? chapterOffsets,
    bool? showBars,
  }) {
    if (_controller != null) {
      final offsets =
          chapterOffsets ??
          (state is _Loaded
              ? (state as _Loaded).chapterOffsets
              : <int, double>{});
      final bars = showBars ?? (state is _Loaded ? (state as _Loaded).showBars : true);
      emit(
        ReaderState.loaded(
          _controller!,
          _controller!.currentChapterIndex,
          _controller!.currentPageIndex,
          offsets,
          _controller!.bookmarks,
          bars,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _saveProgressTimer?.cancel();
    return super.close();
  }
}
