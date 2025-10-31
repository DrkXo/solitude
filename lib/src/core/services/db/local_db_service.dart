import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'daos/ebook_dao.dart';
part 'local_db_service.g.dart';
part 'models/db_ebooks.dart';

@DriftDatabase(tables: [DbEbooks], daos: [EbookDao])
class SolitudeDatabase extends _$SolitudeDatabase {
  SolitudeDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (Migrator m, int from, int to) async {},
  );

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'solitude.db'));
      return NativeDatabase(file);
    });
  }
}

class LocalDbService {
  final SolitudeDatabase solitude;

  LocalDbService() : solitude = SolitudeDatabase();

  Future<void> close() async {
    await solitude.close();
  }

  // Ebook operations
  Future<int> addEbook(DbEbooksCompanion ebook) async {
    return await solitude.ebookDao.addEbook(ebook);
  }

  Future<bool> updateEbook(DbEbooksCompanion ebook) async {
    return await solitude.ebookDao.updateEbook(ebook);
  }

  Future<int> removeEbook(String id) async {
    return await solitude.ebookDao.removeEbook(id);
  }

  Future<DbEbook?> getEbook(String id) async {
    return await solitude.ebookDao.getEbook(id);
  }

  Future<List<DbEbook>> getAllEbooks({int? limit, int? offset}) async {
    return await solitude.ebookDao.getAllEbooks(limit: limit, offset: offset);
  }

  Future<List<DbEbook>> searchEbooks(String query) async {
    return await solitude.ebookDao.searchEbooks(query);
  }

  Future<List<DbEbook>> getRecentlyReadEbooks({int limit = 10}) async {
    return await solitude.ebookDao.getRecentlyReadEbooks(limit: limit);
  }

  Future<List<DbEbook>> getCurrentlyReadingEbooks() async {
    return await solitude.ebookDao.getCurrentlyReadingEbooks();
  }

  Future<void> clearAllEbooks() async {
    await solitude.ebookDao.clearAllEbooks();
  }

  // Stats
  Future<int> getTotalEbooks() async {
    return await solitude.ebookDao.getTotalEbooks();
  }

  Future<int> getTotalSize() async {
    return await solitude.ebookDao.getTotalSize();
  }

  // Streams
  Stream<List<DbEbook>> watchAllEbooks() {
    return solitude.ebookDao.watchAllEbooks();
  }

  Stream<List<DbEbook>> watchRecentlyReadEbooks({int limit = 10}) {
    return solitude.ebookDao.watchRecentlyReadEbooks(limit: limit);
  }

  Stream<List<DbEbook>> watchCurrentlyReadingEbooks() {
    return solitude.ebookDao.watchCurrentlyReadingEbooks();
  }

  Stream<int> watchTotalEbooks() {
    return solitude.ebookDao.watchTotalEbooks();
  }

  Stream<int> watchTotalSize() {
    return solitude.ebookDao.watchTotalSize();
  }
}
