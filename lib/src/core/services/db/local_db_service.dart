import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:solitude/src/core/utils/utils.dart';

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
    beforeOpen: (details) async {
      // Ensure database directory exists
      final dbFolder = await getApplicationSupportDirectory();
      final dbDir = Directory(p.join(dbFolder.path, 'solitude'));
      if (!await dbDir.exists()) {
        await dbDir.create(recursive: true);
      }
    },
    onUpgrade: (Migrator m, int from, int to) async {
      try {
        if (from < 4) {
          // Add currentPage and pageOffset columns to existing DbEbooks table
          await m.addColumn(dbEbooks, dbEbooks.currentPage);
          await m.addColumn(dbEbooks, dbEbooks.pageOffset);
        }
        // Add more version-specific logic here as needed
      } catch (e) {
        logger.error('Migration failed: $e');
        rethrow;
      }
    },
  );

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      try {
        final dbFolder = await getApplicationSupportDirectory();
        final dbDir = Directory(p.join(dbFolder.path, 'solitude'));
        if (!await dbDir.exists()) {
          await dbDir.create(recursive: true);
        }
        final file = File(p.join(dbDir.path, 'solitude.db'));
        return NativeDatabase(file);
      } catch (e) {
        logger.error('Failed to open database connection: $e');
        rethrow;
      }
    });
  }
}

// @module
// abstract class LocalDbModule {
//   SolitudeDatabase get solitude => SolitudeDatabase();
// }

@lazySingleton
class LocalDbService {
  final SolitudeDatabase solitude;

  LocalDbService(this.solitude);

  Future<void> close() async {
    try {
      await solitude.close();
      logger.info('Database closed successfully');
    } catch (e) {
      logger.error('Failed to close database: $e');
      rethrow;
    }
  }
}
