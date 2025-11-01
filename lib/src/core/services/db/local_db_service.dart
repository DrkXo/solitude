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
}
