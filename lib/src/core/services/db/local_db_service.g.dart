// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_db_service.dart';

// ignore_for_file: type=lint
class $DbEbooksTable extends DbEbooks with TableInfo<$DbEbooksTable, DbEbook> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DbEbooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _filePathMeta = const VerificationMeta(
    'filePath',
  );
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
    'file_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _fileNameMeta = const VerificationMeta(
    'fileName',
  );
  @override
  late final GeneratedColumn<String> fileName = GeneratedColumn<String>(
    'file_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
    'author',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addedAtMeta = const VerificationMeta(
    'addedAt',
  );
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
    'added_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastReadAtMeta = const VerificationMeta(
    'lastReadAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastReadAt = GeneratedColumn<DateTime>(
    'last_read_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _currentChapterMeta = const VerificationMeta(
    'currentChapter',
  );
  @override
  late final GeneratedColumn<int> currentChapter = GeneratedColumn<int>(
    'current_chapter',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _fileSizeMeta = const VerificationMeta(
    'fileSize',
  );
  @override
  late final GeneratedColumn<int> fileSize = GeneratedColumn<int>(
    'file_size',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _coverImageMeta = const VerificationMeta(
    'coverImage',
  );
  @override
  late final GeneratedColumn<String> coverImage = GeneratedColumn<String>(
    'cover_image',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    filePath,
    fileName,
    title,
    author,
    addedAt,
    lastReadAt,
    currentChapter,
    fileSize,
    coverImage,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'db_ebooks';
  @override
  VerificationContext validateIntegrity(
    Insertable<DbEbook> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('file_path')) {
      context.handle(
        _filePathMeta,
        filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta),
      );
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('file_name')) {
      context.handle(
        _fileNameMeta,
        fileName.isAcceptableOrUnknown(data['file_name']!, _fileNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fileNameMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('author')) {
      context.handle(
        _authorMeta,
        author.isAcceptableOrUnknown(data['author']!, _authorMeta),
      );
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('added_at')) {
      context.handle(
        _addedAtMeta,
        addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_addedAtMeta);
    }
    if (data.containsKey('last_read_at')) {
      context.handle(
        _lastReadAtMeta,
        lastReadAt.isAcceptableOrUnknown(
          data['last_read_at']!,
          _lastReadAtMeta,
        ),
      );
    }
    if (data.containsKey('current_chapter')) {
      context.handle(
        _currentChapterMeta,
        currentChapter.isAcceptableOrUnknown(
          data['current_chapter']!,
          _currentChapterMeta,
        ),
      );
    }
    if (data.containsKey('file_size')) {
      context.handle(
        _fileSizeMeta,
        fileSize.isAcceptableOrUnknown(data['file_size']!, _fileSizeMeta),
      );
    }
    if (data.containsKey('cover_image')) {
      context.handle(
        _coverImageMeta,
        coverImage.isAcceptableOrUnknown(data['cover_image']!, _coverImageMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbEbook map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DbEbook(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      filePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_path'],
      )!,
      fileName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_name'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      author: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author'],
      )!,
      addedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}added_at'],
      )!,
      lastReadAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_read_at'],
      ),
      currentChapter: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}current_chapter'],
      )!,
      fileSize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}file_size'],
      ),
      coverImage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cover_image'],
      ),
    );
  }

  @override
  $DbEbooksTable createAlias(String alias) {
    return $DbEbooksTable(attachedDatabase, alias);
  }
}

class DbEbook extends DataClass implements Insertable<DbEbook> {
  final String id;
  final String filePath;
  final String fileName;
  final String title;
  final String author;
  final DateTime addedAt;
  final DateTime? lastReadAt;
  final int currentChapter;
  final int? fileSize;
  final String? coverImage;
  const DbEbook({
    required this.id,
    required this.filePath,
    required this.fileName,
    required this.title,
    required this.author,
    required this.addedAt,
    this.lastReadAt,
    required this.currentChapter,
    this.fileSize,
    this.coverImage,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['file_path'] = Variable<String>(filePath);
    map['file_name'] = Variable<String>(fileName);
    map['title'] = Variable<String>(title);
    map['author'] = Variable<String>(author);
    map['added_at'] = Variable<DateTime>(addedAt);
    if (!nullToAbsent || lastReadAt != null) {
      map['last_read_at'] = Variable<DateTime>(lastReadAt);
    }
    map['current_chapter'] = Variable<int>(currentChapter);
    if (!nullToAbsent || fileSize != null) {
      map['file_size'] = Variable<int>(fileSize);
    }
    if (!nullToAbsent || coverImage != null) {
      map['cover_image'] = Variable<String>(coverImage);
    }
    return map;
  }

  DbEbooksCompanion toCompanion(bool nullToAbsent) {
    return DbEbooksCompanion(
      id: Value(id),
      filePath: Value(filePath),
      fileName: Value(fileName),
      title: Value(title),
      author: Value(author),
      addedAt: Value(addedAt),
      lastReadAt: lastReadAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastReadAt),
      currentChapter: Value(currentChapter),
      fileSize: fileSize == null && nullToAbsent
          ? const Value.absent()
          : Value(fileSize),
      coverImage: coverImage == null && nullToAbsent
          ? const Value.absent()
          : Value(coverImage),
    );
  }

  factory DbEbook.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DbEbook(
      id: serializer.fromJson<String>(json['id']),
      filePath: serializer.fromJson<String>(json['filePath']),
      fileName: serializer.fromJson<String>(json['fileName']),
      title: serializer.fromJson<String>(json['title']),
      author: serializer.fromJson<String>(json['author']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
      lastReadAt: serializer.fromJson<DateTime?>(json['lastReadAt']),
      currentChapter: serializer.fromJson<int>(json['currentChapter']),
      fileSize: serializer.fromJson<int?>(json['fileSize']),
      coverImage: serializer.fromJson<String?>(json['coverImage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'filePath': serializer.toJson<String>(filePath),
      'fileName': serializer.toJson<String>(fileName),
      'title': serializer.toJson<String>(title),
      'author': serializer.toJson<String>(author),
      'addedAt': serializer.toJson<DateTime>(addedAt),
      'lastReadAt': serializer.toJson<DateTime?>(lastReadAt),
      'currentChapter': serializer.toJson<int>(currentChapter),
      'fileSize': serializer.toJson<int?>(fileSize),
      'coverImage': serializer.toJson<String?>(coverImage),
    };
  }

  DbEbook copyWith({
    String? id,
    String? filePath,
    String? fileName,
    String? title,
    String? author,
    DateTime? addedAt,
    Value<DateTime?> lastReadAt = const Value.absent(),
    int? currentChapter,
    Value<int?> fileSize = const Value.absent(),
    Value<String?> coverImage = const Value.absent(),
  }) => DbEbook(
    id: id ?? this.id,
    filePath: filePath ?? this.filePath,
    fileName: fileName ?? this.fileName,
    title: title ?? this.title,
    author: author ?? this.author,
    addedAt: addedAt ?? this.addedAt,
    lastReadAt: lastReadAt.present ? lastReadAt.value : this.lastReadAt,
    currentChapter: currentChapter ?? this.currentChapter,
    fileSize: fileSize.present ? fileSize.value : this.fileSize,
    coverImage: coverImage.present ? coverImage.value : this.coverImage,
  );
  DbEbook copyWithCompanion(DbEbooksCompanion data) {
    return DbEbook(
      id: data.id.present ? data.id.value : this.id,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      fileName: data.fileName.present ? data.fileName.value : this.fileName,
      title: data.title.present ? data.title.value : this.title,
      author: data.author.present ? data.author.value : this.author,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
      lastReadAt: data.lastReadAt.present
          ? data.lastReadAt.value
          : this.lastReadAt,
      currentChapter: data.currentChapter.present
          ? data.currentChapter.value
          : this.currentChapter,
      fileSize: data.fileSize.present ? data.fileSize.value : this.fileSize,
      coverImage: data.coverImage.present
          ? data.coverImage.value
          : this.coverImage,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DbEbook(')
          ..write('id: $id, ')
          ..write('filePath: $filePath, ')
          ..write('fileName: $fileName, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('addedAt: $addedAt, ')
          ..write('lastReadAt: $lastReadAt, ')
          ..write('currentChapter: $currentChapter, ')
          ..write('fileSize: $fileSize, ')
          ..write('coverImage: $coverImage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    filePath,
    fileName,
    title,
    author,
    addedAt,
    lastReadAt,
    currentChapter,
    fileSize,
    coverImage,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DbEbook &&
          other.id == this.id &&
          other.filePath == this.filePath &&
          other.fileName == this.fileName &&
          other.title == this.title &&
          other.author == this.author &&
          other.addedAt == this.addedAt &&
          other.lastReadAt == this.lastReadAt &&
          other.currentChapter == this.currentChapter &&
          other.fileSize == this.fileSize &&
          other.coverImage == this.coverImage);
}

class DbEbooksCompanion extends UpdateCompanion<DbEbook> {
  final Value<String> id;
  final Value<String> filePath;
  final Value<String> fileName;
  final Value<String> title;
  final Value<String> author;
  final Value<DateTime> addedAt;
  final Value<DateTime?> lastReadAt;
  final Value<int> currentChapter;
  final Value<int?> fileSize;
  final Value<String?> coverImage;
  final Value<int> rowid;
  const DbEbooksCompanion({
    this.id = const Value.absent(),
    this.filePath = const Value.absent(),
    this.fileName = const Value.absent(),
    this.title = const Value.absent(),
    this.author = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.lastReadAt = const Value.absent(),
    this.currentChapter = const Value.absent(),
    this.fileSize = const Value.absent(),
    this.coverImage = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DbEbooksCompanion.insert({
    required String id,
    required String filePath,
    required String fileName,
    required String title,
    required String author,
    required DateTime addedAt,
    this.lastReadAt = const Value.absent(),
    this.currentChapter = const Value.absent(),
    this.fileSize = const Value.absent(),
    this.coverImage = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       filePath = Value(filePath),
       fileName = Value(fileName),
       title = Value(title),
       author = Value(author),
       addedAt = Value(addedAt);
  static Insertable<DbEbook> custom({
    Expression<String>? id,
    Expression<String>? filePath,
    Expression<String>? fileName,
    Expression<String>? title,
    Expression<String>? author,
    Expression<DateTime>? addedAt,
    Expression<DateTime>? lastReadAt,
    Expression<int>? currentChapter,
    Expression<int>? fileSize,
    Expression<String>? coverImage,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (filePath != null) 'file_path': filePath,
      if (fileName != null) 'file_name': fileName,
      if (title != null) 'title': title,
      if (author != null) 'author': author,
      if (addedAt != null) 'added_at': addedAt,
      if (lastReadAt != null) 'last_read_at': lastReadAt,
      if (currentChapter != null) 'current_chapter': currentChapter,
      if (fileSize != null) 'file_size': fileSize,
      if (coverImage != null) 'cover_image': coverImage,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DbEbooksCompanion copyWith({
    Value<String>? id,
    Value<String>? filePath,
    Value<String>? fileName,
    Value<String>? title,
    Value<String>? author,
    Value<DateTime>? addedAt,
    Value<DateTime?>? lastReadAt,
    Value<int>? currentChapter,
    Value<int?>? fileSize,
    Value<String?>? coverImage,
    Value<int>? rowid,
  }) {
    return DbEbooksCompanion(
      id: id ?? this.id,
      filePath: filePath ?? this.filePath,
      fileName: fileName ?? this.fileName,
      title: title ?? this.title,
      author: author ?? this.author,
      addedAt: addedAt ?? this.addedAt,
      lastReadAt: lastReadAt ?? this.lastReadAt,
      currentChapter: currentChapter ?? this.currentChapter,
      fileSize: fileSize ?? this.fileSize,
      coverImage: coverImage ?? this.coverImage,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (fileName.present) {
      map['file_name'] = Variable<String>(fileName.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    if (lastReadAt.present) {
      map['last_read_at'] = Variable<DateTime>(lastReadAt.value);
    }
    if (currentChapter.present) {
      map['current_chapter'] = Variable<int>(currentChapter.value);
    }
    if (fileSize.present) {
      map['file_size'] = Variable<int>(fileSize.value);
    }
    if (coverImage.present) {
      map['cover_image'] = Variable<String>(coverImage.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DbEbooksCompanion(')
          ..write('id: $id, ')
          ..write('filePath: $filePath, ')
          ..write('fileName: $fileName, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('addedAt: $addedAt, ')
          ..write('lastReadAt: $lastReadAt, ')
          ..write('currentChapter: $currentChapter, ')
          ..write('fileSize: $fileSize, ')
          ..write('coverImage: $coverImage, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$SolitudeDatabase extends GeneratedDatabase {
  _$SolitudeDatabase(QueryExecutor e) : super(e);
  $SolitudeDatabaseManager get managers => $SolitudeDatabaseManager(this);
  late final $DbEbooksTable dbEbooks = $DbEbooksTable(this);
  late final EbookDao ebookDao = EbookDao(this as SolitudeDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dbEbooks];
}

typedef $$DbEbooksTableCreateCompanionBuilder =
    DbEbooksCompanion Function({
      required String id,
      required String filePath,
      required String fileName,
      required String title,
      required String author,
      required DateTime addedAt,
      Value<DateTime?> lastReadAt,
      Value<int> currentChapter,
      Value<int?> fileSize,
      Value<String?> coverImage,
      Value<int> rowid,
    });
typedef $$DbEbooksTableUpdateCompanionBuilder =
    DbEbooksCompanion Function({
      Value<String> id,
      Value<String> filePath,
      Value<String> fileName,
      Value<String> title,
      Value<String> author,
      Value<DateTime> addedAt,
      Value<DateTime?> lastReadAt,
      Value<int> currentChapter,
      Value<int?> fileSize,
      Value<String?> coverImage,
      Value<int> rowid,
    });

class $$DbEbooksTableFilterComposer
    extends Composer<_$SolitudeDatabase, $DbEbooksTable> {
  $$DbEbooksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fileName => $composableBuilder(
    column: $table.fileName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get author => $composableBuilder(
    column: $table.author,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastReadAt => $composableBuilder(
    column: $table.lastReadAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get currentChapter => $composableBuilder(
    column: $table.currentChapter,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fileSize => $composableBuilder(
    column: $table.fileSize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get coverImage => $composableBuilder(
    column: $table.coverImage,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DbEbooksTableOrderingComposer
    extends Composer<_$SolitudeDatabase, $DbEbooksTable> {
  $$DbEbooksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fileName => $composableBuilder(
    column: $table.fileName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get author => $composableBuilder(
    column: $table.author,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastReadAt => $composableBuilder(
    column: $table.lastReadAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get currentChapter => $composableBuilder(
    column: $table.currentChapter,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fileSize => $composableBuilder(
    column: $table.fileSize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get coverImage => $composableBuilder(
    column: $table.coverImage,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DbEbooksTableAnnotationComposer
    extends Composer<_$SolitudeDatabase, $DbEbooksTable> {
  $$DbEbooksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  GeneratedColumn<String> get fileName =>
      $composableBuilder(column: $table.fileName, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastReadAt => $composableBuilder(
    column: $table.lastReadAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get currentChapter => $composableBuilder(
    column: $table.currentChapter,
    builder: (column) => column,
  );

  GeneratedColumn<int> get fileSize =>
      $composableBuilder(column: $table.fileSize, builder: (column) => column);

  GeneratedColumn<String> get coverImage => $composableBuilder(
    column: $table.coverImage,
    builder: (column) => column,
  );
}

class $$DbEbooksTableTableManager
    extends
        RootTableManager<
          _$SolitudeDatabase,
          $DbEbooksTable,
          DbEbook,
          $$DbEbooksTableFilterComposer,
          $$DbEbooksTableOrderingComposer,
          $$DbEbooksTableAnnotationComposer,
          $$DbEbooksTableCreateCompanionBuilder,
          $$DbEbooksTableUpdateCompanionBuilder,
          (
            DbEbook,
            BaseReferences<_$SolitudeDatabase, $DbEbooksTable, DbEbook>,
          ),
          DbEbook,
          PrefetchHooks Function()
        > {
  $$DbEbooksTableTableManager(_$SolitudeDatabase db, $DbEbooksTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DbEbooksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DbEbooksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DbEbooksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> filePath = const Value.absent(),
                Value<String> fileName = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> author = const Value.absent(),
                Value<DateTime> addedAt = const Value.absent(),
                Value<DateTime?> lastReadAt = const Value.absent(),
                Value<int> currentChapter = const Value.absent(),
                Value<int?> fileSize = const Value.absent(),
                Value<String?> coverImage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DbEbooksCompanion(
                id: id,
                filePath: filePath,
                fileName: fileName,
                title: title,
                author: author,
                addedAt: addedAt,
                lastReadAt: lastReadAt,
                currentChapter: currentChapter,
                fileSize: fileSize,
                coverImage: coverImage,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String filePath,
                required String fileName,
                required String title,
                required String author,
                required DateTime addedAt,
                Value<DateTime?> lastReadAt = const Value.absent(),
                Value<int> currentChapter = const Value.absent(),
                Value<int?> fileSize = const Value.absent(),
                Value<String?> coverImage = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => DbEbooksCompanion.insert(
                id: id,
                filePath: filePath,
                fileName: fileName,
                title: title,
                author: author,
                addedAt: addedAt,
                lastReadAt: lastReadAt,
                currentChapter: currentChapter,
                fileSize: fileSize,
                coverImage: coverImage,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DbEbooksTableProcessedTableManager =
    ProcessedTableManager<
      _$SolitudeDatabase,
      $DbEbooksTable,
      DbEbook,
      $$DbEbooksTableFilterComposer,
      $$DbEbooksTableOrderingComposer,
      $$DbEbooksTableAnnotationComposer,
      $$DbEbooksTableCreateCompanionBuilder,
      $$DbEbooksTableUpdateCompanionBuilder,
      (DbEbook, BaseReferences<_$SolitudeDatabase, $DbEbooksTable, DbEbook>),
      DbEbook,
      PrefetchHooks Function()
    >;

class $SolitudeDatabaseManager {
  final _$SolitudeDatabase _db;
  $SolitudeDatabaseManager(this._db);
  $$DbEbooksTableTableManager get dbEbooks =>
      $$DbEbooksTableTableManager(_db, _db.dbEbooks);
}

mixin _$EbookDaoMixin on DatabaseAccessor<SolitudeDatabase> {
  $DbEbooksTable get dbEbooks => attachedDatabase.dbEbooks;
}
