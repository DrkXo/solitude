part of '../local_db_service.dart';

@DriftAccessor(tables: [DbKeyValue])
class KeyValueDao extends DatabaseAccessor<SolitudeDatabase> {
  KeyValueDao(super.db);

  Future<void> setValue(String key, String value) async {
    await into(db.dbKeyValue).insertOnConflictUpdate(
      DbKeyValueCompanion(
        key: Value(key),
        value: Value(value),
      ),
    );
  }

  Future<String?> getValue(String key) async {
    final query = select(db.dbKeyValue)..where((tbl) => tbl.key.equals(key));
    final result = await query.getSingleOrNull();
    return result?.value;
  }

  Future<void> deleteValue(String key) async {
    await (delete(db.dbKeyValue)..where((tbl) => tbl.key.equals(key))).go();
  }

  Future<Map<String, String>> getAll() async {
    final results = await select(db.dbKeyValue).get();
    return {for (var r in results) r.key: r.value};
  }
}