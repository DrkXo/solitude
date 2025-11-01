part of '../local_db_service.dart';

@DriftAccessor(tables: [DbEbooks])
class EbookDao extends DatabaseAccessor<SolitudeDatabase> with _$EbookDaoMixin {
  EbookDao(super.db);

  // Ebook operations
  Future<int> addEbook(DbEbooksCompanion ebook) async {
    return await into(dbEbooks).insert(ebook);
  }

  Future<bool> updateEbook(DbEbooksCompanion ebook) async {
    return await update(dbEbooks).replace(ebook);
  }

  Future<int> removeEbook(String id) async {
    return await (delete(dbEbooks)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<DbEbook?> getEbook(String id) async {
    final query = select(dbEbooks)..where((tbl) => tbl.id.equals(id));
    return await query.getSingleOrNull();
  }

  Future<List<DbEbook>> getAllEbooks({int? limit, int? offset}) async {
    var query = select(dbEbooks);
    if (limit != null) {
      query = query..limit(limit, offset: offset ?? 0);
    }
    return await query.get();
  }

  Future<List<DbEbook>> searchEbooks(String query) async {
    final lowerQuery = query.toLowerCase();
    final queryExpr =
        dbEbooks.title.lower().contains(lowerQuery) |
        dbEbooks.author.lower().contains(lowerQuery);
    return await (select(dbEbooks)..where((tbl) => queryExpr)).get();
  }

  Future<List<DbEbook>> getRecentlyReadEbooks({int limit = 10}) async {
    return await (select(dbEbooks)
          ..where((tbl) => tbl.lastReadAt.isNotNull())
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.lastReadAt)])
          ..limit(limit))
        .get();
  }

  Future<List<DbEbook>> getCurrentlyReadingEbooks() async {
    return await (select(
      dbEbooks,
    )..where((tbl) => tbl.currentChapter.isBiggerThanValue(0))).get();
  }

  Future<void> clearAllEbooks() async {
    await delete(dbEbooks).go();
  }

  // Stats
  Future<int> getTotalEbooks() async {
    final count = dbEbooks.id.count();
    final query = selectOnly(dbEbooks)..addColumns([count]);
    return await query.map((row) => row.read(count)!).getSingle();
  }

  Future<int> getTotalSize() async {
    final sum = dbEbooks.fileSize.sum();
    final query = selectOnly(dbEbooks)..addColumns([sum]);
    final result = await query.map((row) => row.read(sum) ?? 0).getSingle();
    return result;
  }

  // Streams
  Stream<List<DbEbook>> watchAllEbooks() {
    return select(dbEbooks).watch();
  }

  Stream<List<DbEbook>> watchRecentlyReadEbooks({int limit = 10}) {
    return (select(dbEbooks)
          ..where((tbl) => tbl.lastReadAt.isNotNull())
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.lastReadAt)])
          ..limit(limit))
        .watch();
  }

  Stream<List<DbEbook>> watchCurrentlyReadingEbooks() {
    return (select(
      dbEbooks,
    )..where((tbl) => tbl.currentChapter.isBiggerThanValue(0))).watch();
  }

  Stream<int> watchTotalEbooks() {
    final count = dbEbooks.id.count();
    final query = selectOnly(dbEbooks)..addColumns([count]);
    return query.map((row) => row.read(count)!).watchSingle();
  }

  Stream<int> watchTotalSize() {
    final sum = dbEbooks.fileSize.sum();
    final query = selectOnly(dbEbooks)..addColumns([sum]);
    return query.map((row) => row.read(sum) ?? 0).watchSingle();
  }
}
