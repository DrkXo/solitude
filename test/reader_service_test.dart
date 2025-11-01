import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ebook_x/models/ebook/ebook.dart';
import 'package:solitude/src/core/services/ebook_library_service.dart';
import 'package:solitude/src/core/services/reader_service.dart';
import 'package:solitude/src/features/library/data/models/ebook_entry.dart';

class MockEbookLibraryService extends Mock implements EbookLibraryService {}
class MockEbook extends Mock implements Ebook {}

void main() {
  late ReaderService readerService;
  late MockEbookLibraryService mockLibraryService;
  late MockEbook mockEbook;
  late EbookEntry dummyEntry;

  setUp(() {
    mockLibraryService = MockEbookLibraryService();
    mockEbook = MockEbook();
    dummyEntry = EbookEntry(
      id: 'dummy',
      ebook: mockEbook,
      filePath: 'dummy.epub',
      fileName: 'dummy.epub',
      addedAt: DateTime.now(),
      currentChapter: 0,
      currentPage: 0,
      pageOffset: 0.0,
      bookmarks: [],
    );
    readerService = ReaderService(ebookLibraryService: mockLibraryService);
    registerFallbackValue(dummyEntry);
  });

  group('ReaderService', () {
    test('should update reading progress successfully', () async {
      // Arrange
      const ebookId = 'test-id';
      const currentChapter = 2;
      const currentPage = 5;
      const pageOffset = 0.5;
      final mockEntry = EbookEntry(
        id: ebookId,
        ebook: mockEbook,
        filePath: 'test.epub',
        fileName: 'test.epub',
        addedAt: DateTime.now(),
        currentChapter: 1,
        currentPage: 1,
        pageOffset: 0.0,
        bookmarks: [],
      );
      when(() => mockLibraryService.getEbook(ebookId)).thenReturn(mockEntry);
      when(() => mockLibraryService.updateEbook(any())).thenAnswer((_) async {});

      // Act
      await readerService.updateReadingProgress(
        ebookId,
        currentChapter,
        currentPage: currentPage,
        pageOffset: pageOffset,
      );

      // Assert
      verify(() => mockLibraryService.getEbook(ebookId)).called(1);
      verify(() => mockLibraryService.updateEbook(any())).called(1);
    });

    test('should throw exception for non-existent ebook', () async {
      // Arrange
      const ebookId = 'non-existent';
      when(() => mockLibraryService.getEbook(ebookId)).thenReturn(null);

      // Act & Assert
      expect(
        () => readerService.updateReadingProgress(ebookId, 1),
        throwsA(isA<Exception>()),
      );
    });

    test('should get reading progress', () {
      // Arrange
      const ebookId = 'test-id';
      final mockEntry = EbookEntry(
        id: ebookId,
        ebook: mockEbook,
        filePath: 'test.epub',
        fileName: 'test.epub',
        addedAt: DateTime.now(),
        currentChapter: 2,
        currentPage: 5,
        pageOffset: 0.5,
        bookmarks: [],
        lastReadAt: DateTime.now(),
      );
      when(() => mockLibraryService.getEbook(ebookId)).thenReturn(mockEntry);

      // Act
      final progress = readerService.getReadingProgress(ebookId);

      // Assert
      expect(progress?.currentChapter, 2);
      expect(progress?.currentPage, 5);
      expect(progress?.pageOffset, 0.5);
    });

    test('should return null for non-existent ebook progress', () {
      // Arrange
      const ebookId = 'non-existent';
      when(() => mockLibraryService.getEbook(ebookId)).thenReturn(null);

      // Act
      final progress = readerService.getReadingProgress(ebookId);

      // Assert
      expect(progress, isNull);
    });
  });
}
