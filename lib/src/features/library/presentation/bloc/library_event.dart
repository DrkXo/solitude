
  part of 'library_bloc.dart';
  @freezed
  class LibraryEvent with _$LibraryEvent {
    const factory LibraryEvent.started() = _Started;
    const factory LibraryEvent.pickEbook() = _PickEbook;
    const factory LibraryEvent.removeEbook(String id) = _RemoveEbook;
    const factory LibraryEvent.searchEbooks(String query) = _SearchEbooks;
    const factory LibraryEvent.updateEbook(EbookEntry entry) = _UpdateEbook;
    const factory LibraryEvent.ebooksChanged(List<EbookEntry> ebooks) = _EbooksChanged;
  }
  