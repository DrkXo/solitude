part of 'library_bloc.dart';

@freezed
class LibraryState with _$LibraryState {
  const factory LibraryState.initial() = _Initial;
  const factory LibraryState.loading() = _Loading;
  const factory LibraryState.loaded(
    List<EbookEntry> ebooks, {
    @Default(false) bool isAdding,
  }) = _Loaded;
  const factory LibraryState.error(
    String message,
    List<EbookEntry> ebooks,
  ) = _Error;
}
