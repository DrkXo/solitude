part of 'reader_bloc.dart';

@freezed
abstract class ReaderEvent with _$ReaderEvent {
  const factory ReaderEvent.started() = _Started;
  const factory ReaderEvent.loadEbook(String ebookId) = _LoadEbook;
  const factory ReaderEvent.nextChapter() = _NextChapter;
  const factory ReaderEvent.previousChapter() = _PreviousChapter;
  const factory ReaderEvent.startReading() = _StartReading;
  const factory ReaderEvent.updateReadingProgress(int chapterIndex) = _UpdateReadingProgress;
}
