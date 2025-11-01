import 'package:ebook_x/ebook_x.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:ebook_x/models/bookmark.dart';

import '../../../../core/services/ebook_library_service.dart';
import '../../../../core/services/reader_service.dart';

part 'reader_bloc.freezed.dart';

@freezed
abstract class ReaderEvent with _$ReaderEvent {
  const factory ReaderEvent.started() = _Started;
  const factory ReaderEvent.loadEbook(String ebookId) = _LoadEbook;
  const factory ReaderEvent.nextChapter() = _NextChapter;
  const factory ReaderEvent.previousChapter() = _PreviousChapter;
  const factory ReaderEvent.nextPage() = _NextPage;
  const factory ReaderEvent.previousPage() = _PreviousPage;
  const factory ReaderEvent.goToPage(int pageIndex) = _GoToPage;
  const factory ReaderEvent.addBookmark(String title) = _AddBookmark;
  const factory ReaderEvent.removeBookmark(int index) = _RemoveBookmark;
  const factory ReaderEvent.goToBookmark(int index) = _GoToBookmark;
  const factory ReaderEvent.startReading() = _StartReading;
  const factory ReaderEvent.updateReadingProgress(int chapterIndex) = _UpdateReadingProgress;
  const factory ReaderEvent.updatePageOffset(double offset) = _UpdatePageOffset;
}

@freezed
abstract class ReaderState with _$ReaderState {
  const factory ReaderState.initial() = _Initial;
  const factory ReaderState.loaded(
    EbookXController controller,
    int currentChapterIndex,
    int currentPageIndex,
    double pageOffset,
    List<Bookmark> bookmarks,
  ) = _Loaded;
  const factory ReaderState.error(String message) = _Error;
}

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
    on<_NextPage>(_onNextPage);
    on<_PreviousPage>(_onPreviousPage);
    on<_GoToPage>(_onGoToPage);
    on<_AddBookmark>(_onAddBookmark);
    on<_RemoveBookmark>(_onRemoveBookmark);
    on<_GoToBookmark>(_onGoToBookmark);
    on<_StartReading>(_onStartReading);
    on<_UpdateReadingProgress>(_onUpdateReadingProgress);
    on<_UpdatePageOffset>(_onUpdatePageOffset);
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
      );

      // Load saved reading progress
      final progress = _readerService.getReadingProgress(event.ebookId);
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
      }

      emit(
        ReaderState.loaded(
          _controller!,
          _controller!.currentChapterIndex,
          _controller!.currentPageIndex,
          progress?.pageOffset ?? 0.0,
          _controller!.bookmarks,
        ),
      );
    } catch (e) {
      emit(ReaderState.error('Failed to load ebook: $e'));
    }
  }

   void _onNextChapter(_NextChapter event, Emitter<ReaderState> emit) async {
     if (_controller != null && state is _Loaded) {
       final nextChapterIndex = _controller!.currentChapterIndex + 1;
        if (nextChapterIndex < _controller!.totalChapters) {
          _controller!.goToChapter(nextChapterIndex);
          emit(
            ReaderState.loaded(
              _controller!,
              _controller!.currentChapterIndex,
              _controller!.currentPageIndex,
              0.0, // Reset offset on chapter change
              _controller!.bookmarks,
            ),
          );
          await _saveReadingProgress();
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
          emit(
            ReaderState.loaded(
              _controller!,
              _controller!.currentChapterIndex,
              _controller!.currentPageIndex,
              0.0, // Reset offset on chapter change
              _controller!.bookmarks,
            ),
          );
          await _saveReadingProgress();
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
      emit(
        ReaderState.loaded(
          _controller!,
          _controller!.currentChapterIndex,
          _controller!.currentPageIndex,
          0.0, // Reset offset on chapter change
          _controller!.bookmarks,
        ),
      );
      _saveReadingProgress();
    }
  }

  void _onUpdatePageOffset(_UpdatePageOffset event, Emitter<ReaderState> emit) {
    if (state is _Loaded) {
      emit(
        ReaderState.loaded(
          (state as _Loaded).controller,
          (state as _Loaded).currentChapterIndex,
          (state as _Loaded).currentPageIndex,
          event.offset,
          (state as _Loaded).bookmarks,
        ),
      );
      _saveReadingProgress();
    }
  }

  void _onNextPage(_NextPage event, Emitter<ReaderState> emit) {
    if (_controller != null && state is _Loaded) {
      final success = _controller!.nextPage();
      if (success) {
        emit(
          ReaderState.loaded(
            _controller!,
            _controller!.currentChapterIndex,
            _controller!.currentPageIndex,
            0.0, // Reset offset on page change
            _controller!.bookmarks,
          ),
        );
        _saveReadingProgress();
      }
    }
  }

  void _onPreviousPage(_PreviousPage event, Emitter<ReaderState> emit) {
    if (_controller != null && state is _Loaded) {
      final success = _controller!.previousPage();
      if (success) {
        emit(
          ReaderState.loaded(
            _controller!,
            _controller!.currentChapterIndex,
            _controller!.currentPageIndex,
            0.0, // Reset offset on page change
            _controller!.bookmarks,
          ),
        );
        _saveReadingProgress();
      }
    }
  }

  void _onGoToPage(_GoToPage event, Emitter<ReaderState> emit) {
    if (_controller != null && state is _Loaded) {
      _controller!.goToPage(event.pageIndex);
      emit(
        ReaderState.loaded(
          _controller!,
          _controller!.currentChapterIndex,
          _controller!.currentPageIndex,
          0.0, // Reset offset on page change
          _controller!.bookmarks,
        ),
      );
      _saveReadingProgress();
    }
  }

  void _onAddBookmark(_AddBookmark event, Emitter<ReaderState> emit) async {
    if (_controller != null && state is _Loaded && _currentEbookId != null) {
      _controller!.addBookmark(event.title);
      await _readerService.updateReadingProgress(
        _currentEbookId!,
        _controller!.currentChapterIndex,
        currentPage: _controller!.currentPageIndex,
        pageOffset: (state as _Loaded).pageOffset,
        bookmarks: _controller!.bookmarks,
      );
      emit(
        ReaderState.loaded(
          _controller!,
          _controller!.currentChapterIndex,
          _controller!.currentPageIndex,
          (state as _Loaded).pageOffset,
          _controller!.bookmarks,
        ),
      );
    }
  }

  void _onRemoveBookmark(_RemoveBookmark event, Emitter<ReaderState> emit) async {
    if (_controller != null && state is _Loaded && _currentEbookId != null) {
      _controller!.removeBookmark(event.index);
      await _readerService.updateReadingProgress(
        _currentEbookId!,
        _controller!.currentChapterIndex,
        currentPage: _controller!.currentPageIndex,
        pageOffset: (state as _Loaded).pageOffset,
        bookmarks: _controller!.bookmarks,
      );
      emit(
        ReaderState.loaded(
          _controller!,
          _controller!.currentChapterIndex,
          _controller!.currentPageIndex,
          (state as _Loaded).pageOffset,
          _controller!.bookmarks,
        ),
      );
    }
  }

  void _onGoToBookmark(_GoToBookmark event, Emitter<ReaderState> emit) {
    if (_controller != null && state is _Loaded) {
      _controller!.goToBookmark(event.index);
      emit(
        ReaderState.loaded(
          _controller!,
          _controller!.currentChapterIndex,
          _controller!.currentPageIndex,
          0.0, // Reset offset when going to bookmark
          _controller!.bookmarks,
        ),
      );
      _saveReadingProgress();
    }
  }

  Future<void> _saveReadingProgress() async {
    if (_controller != null && state is _Loaded && _currentEbookId != null) {
      await _readerService.updateReadingProgress(
        _currentEbookId!,
        _controller!.currentChapterIndex,
        currentPage: _controller!.currentPageIndex,
        pageOffset: (state as _Loaded).pageOffset,
        bookmarks: _controller!.bookmarks,
      );
    }
  }
}
