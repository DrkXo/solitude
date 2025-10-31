part of 'reader_bloc.dart';

@freezed
abstract class ReaderState with _$ReaderState {
  const factory ReaderState.initial() = _Initial;
  const factory ReaderState.loaded(
    EbookXController controller,
    int currentChapterIndex,
    int currentPageIndex,
  ) = _Loaded;
  const factory ReaderState.error(String message) = _Error;
}
