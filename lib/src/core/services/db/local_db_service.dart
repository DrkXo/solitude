import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'daos/ebook_dao.dart';
part 'daos/key_value_dao.dart';
part 'local_db_service.g.dart';
part 'models/db_ebooks.dart';
part 'models/db_key_value.dart';

@DriftDatabase(tables: [DbEbooks, DbKeyValue], daos: [EbookDao, KeyValueDao])
class SolitudeDatabase extends _$SolitudeDatabase {
  SolitudeDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (Migrator m, int from, int to) async {
      if (from < 4) {
        // Add currentPage and pageOffset columns to existing DbEbooks table
        await m.addColumn(dbEbooks, dbEbooks.currentPage);
        await m.addColumn(dbEbooks, dbEbooks.pageOffset);
      }
    },
  );

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'solitude.db'));
      return NativeDatabase(file);
    });
  }
}

@lazySingleton
class LocalDbService {
  static LocalDbService? _instance;
  final SolitudeDatabase solitude;

  LocalDbService._internal() : solitude = SolitudeDatabase();

  factory LocalDbService() {
    _instance ??= LocalDbService._internal();
    return _instance!;
  }

  Future<void> close() async {
    await solitude.close();
  }
}
