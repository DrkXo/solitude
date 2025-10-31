part of '../local_db_service.dart';

class DbEbooks extends Table {
  TextColumn get id => text()();
  TextColumn get filePath => text().unique()();
  TextColumn get fileName => text()();
  TextColumn get title => text()();
  TextColumn get author => text()();
  DateTimeColumn get addedAt => dateTime()();
  DateTimeColumn get lastReadAt => dateTime().nullable()();
  IntColumn get currentChapter => integer().withDefault(const Constant(0))();
   IntColumn get fileSize => integer().nullable()();
   TextColumn get coverImage => text().nullable()();

   @override
  Set<Column> get primaryKey => {id};
}
