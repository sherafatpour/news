import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:news/local/entity/favorite_entity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'favorite.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Favorite])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Get the list of favorite
  Future<List<FavoriteData>> getFavorites() async {
    return await select(favorite).get();
  }

  // Get Favorite
  Future<FavoriteData> getFavorite(int id) async {
    return await (select(favorite)..where((tbl) => tbl.id.equals(id)))
        .getSingle();
  }

  Future<bool> updateFavorite(FavoriteCompanion entity) async{
    return await update(favorite).replace(entity);
  }

  Future<int> insertFavorite(FavoriteCompanion entity) async{
    return await into(favorite).insert(entity);
  }

  Future<int> deleteFavorite(int id) async{
    return await (delete(favorite)..where((tbl) => tbl.postId.equals(id))).go();
  }






}
