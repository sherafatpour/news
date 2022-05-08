// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class FavoriteData extends DataClass implements Insertable<FavoriteData> {
  final int id;
  final int postId;
  final String title;
  final String category;
  final String authorImg;
  final String date;
  final String content;
  final String name;
  FavoriteData(
      {required this.id,
      required this.postId,
      required this.title,
      required this.category,
      required this.authorImg,
      required this.date,
      required this.content,
      required this.name});
  factory FavoriteData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FavoriteData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      postId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}post_id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}post_title'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}post_category'])!,
      authorImg: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}post_author_img'])!,
      date: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}post_date'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}post_content'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}post_name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['post_id'] = Variable<int>(postId);
    map['post_title'] = Variable<String>(title);
    map['post_category'] = Variable<String>(category);
    map['post_author_img'] = Variable<String>(authorImg);
    map['post_date'] = Variable<String>(date);
    map['post_content'] = Variable<String>(content);
    map['post_name'] = Variable<String>(name);
    return map;
  }

  FavoriteCompanion toCompanion(bool nullToAbsent) {
    return FavoriteCompanion(
      id: Value(id),
      postId: Value(postId),
      title: Value(title),
      category: Value(category),
      authorImg: Value(authorImg),
      date: Value(date),
      content: Value(content),
      name: Value(name),
    );
  }

  factory FavoriteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoriteData(
      id: serializer.fromJson<int>(json['id']),
      postId: serializer.fromJson<int>(json['postId']),
      title: serializer.fromJson<String>(json['title']),
      category: serializer.fromJson<String>(json['category']),
      authorImg: serializer.fromJson<String>(json['authorImg']),
      date: serializer.fromJson<String>(json['date']),
      content: serializer.fromJson<String>(json['content']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'postId': serializer.toJson<int>(postId),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<String>(category),
      'authorImg': serializer.toJson<String>(authorImg),
      'date': serializer.toJson<String>(date),
      'content': serializer.toJson<String>(content),
      'name': serializer.toJson<String>(name),
    };
  }

  FavoriteData copyWith(
          {int? id,
          int? postId,
          String? title,
          String? category,
          String? authorImg,
          String? date,
          String? content,
          String? name}) =>
      FavoriteData(
        id: id ?? this.id,
        postId: postId ?? this.postId,
        title: title ?? this.title,
        category: category ?? this.category,
        authorImg: authorImg ?? this.authorImg,
        date: date ?? this.date,
        content: content ?? this.content,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('FavoriteData(')
          ..write('id: $id, ')
          ..write('postId: $postId, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('authorImg: $authorImg, ')
          ..write('date: $date, ')
          ..write('content: $content, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, postId, title, category, authorImg, date, content, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoriteData &&
          other.id == this.id &&
          other.postId == this.postId &&
          other.title == this.title &&
          other.category == this.category &&
          other.authorImg == this.authorImg &&
          other.date == this.date &&
          other.content == this.content &&
          other.name == this.name);
}

class FavoriteCompanion extends UpdateCompanion<FavoriteData> {
  final Value<int> id;
  final Value<int> postId;
  final Value<String> title;
  final Value<String> category;
  final Value<String> authorImg;
  final Value<String> date;
  final Value<String> content;
  final Value<String> name;
  const FavoriteCompanion({
    this.id = const Value.absent(),
    this.postId = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.authorImg = const Value.absent(),
    this.date = const Value.absent(),
    this.content = const Value.absent(),
    this.name = const Value.absent(),
  });
  FavoriteCompanion.insert({
    this.id = const Value.absent(),
    required int postId,
    required String title,
    required String category,
    required String authorImg,
    required String date,
    required String content,
    required String name,
  })  : postId = Value(postId),
        title = Value(title),
        category = Value(category),
        authorImg = Value(authorImg),
        date = Value(date),
        content = Value(content),
        name = Value(name);
  static Insertable<FavoriteData> custom({
    Expression<int>? id,
    Expression<int>? postId,
    Expression<String>? title,
    Expression<String>? category,
    Expression<String>? authorImg,
    Expression<String>? date,
    Expression<String>? content,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (postId != null) 'post_id': postId,
      if (title != null) 'post_title': title,
      if (category != null) 'post_category': category,
      if (authorImg != null) 'post_author_img': authorImg,
      if (date != null) 'post_date': date,
      if (content != null) 'post_content': content,
      if (name != null) 'post_name': name,
    });
  }

  FavoriteCompanion copyWith(
      {Value<int>? id,
      Value<int>? postId,
      Value<String>? title,
      Value<String>? category,
      Value<String>? authorImg,
      Value<String>? date,
      Value<String>? content,
      Value<String>? name}) {
    return FavoriteCompanion(
      id: id ?? this.id,
      postId: postId ?? this.postId,
      title: title ?? this.title,
      category: category ?? this.category,
      authorImg: authorImg ?? this.authorImg,
      date: date ?? this.date,
      content: content ?? this.content,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (postId.present) {
      map['post_id'] = Variable<int>(postId.value);
    }
    if (title.present) {
      map['post_title'] = Variable<String>(title.value);
    }
    if (category.present) {
      map['post_category'] = Variable<String>(category.value);
    }
    if (authorImg.present) {
      map['post_author_img'] = Variable<String>(authorImg.value);
    }
    if (date.present) {
      map['post_date'] = Variable<String>(date.value);
    }
    if (content.present) {
      map['post_content'] = Variable<String>(content.value);
    }
    if (name.present) {
      map['post_name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoriteCompanion(')
          ..write('id: $id, ')
          ..write('postId: $postId, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('authorImg: $authorImg, ')
          ..write('date: $date, ')
          ..write('content: $content, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $FavoriteTable extends Favorite
    with TableInfo<$FavoriteTable, FavoriteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoriteTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _postIdMeta = const VerificationMeta('postId');
  @override
  late final GeneratedColumn<int?> postId = GeneratedColumn<int?>(
      'post_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'post_title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'post_category', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _authorImgMeta = const VerificationMeta('authorImg');
  @override
  late final GeneratedColumn<String?> authorImg = GeneratedColumn<String?>(
      'post_author_img', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String?> date = GeneratedColumn<String?>(
      'post_date', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'post_content', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'post_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, postId, title, category, authorImg, date, content, name];
  @override
  String get aliasedName => _alias ?? 'favorite';
  @override
  String get actualTableName => 'favorite';
  @override
  VerificationContext validateIntegrity(Insertable<FavoriteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('post_id')) {
      context.handle(_postIdMeta,
          postId.isAcceptableOrUnknown(data['post_id']!, _postIdMeta));
    } else if (isInserting) {
      context.missing(_postIdMeta);
    }
    if (data.containsKey('post_title')) {
      context.handle(_titleMeta,
          title.isAcceptableOrUnknown(data['post_title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('post_category')) {
      context.handle(
          _categoryMeta,
          category.isAcceptableOrUnknown(
              data['post_category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('post_author_img')) {
      context.handle(
          _authorImgMeta,
          authorImg.isAcceptableOrUnknown(
              data['post_author_img']!, _authorImgMeta));
    } else if (isInserting) {
      context.missing(_authorImgMeta);
    }
    if (data.containsKey('post_date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['post_date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('post_content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['post_content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('post_name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['post_name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FavoriteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FavoriteData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FavoriteTable createAlias(String alias) {
    return $FavoriteTable(attachedDatabase, alias);
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $FavoriteTable favorite = $FavoriteTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [favorite];
}
