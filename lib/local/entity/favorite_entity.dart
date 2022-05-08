
import 'package:drift/drift.dart';

class Favorite extends Table{
  IntColumn get id=> integer().autoIncrement()();
  IntColumn get postId=> integer().named('post_id')();
  TextColumn get title=> text().named('post_title')();
  TextColumn get category=> text().named('post_category')();
  TextColumn get authorImg=> text().named('post_author_img')();
  TextColumn get date=> text().named('post_date')();
  TextColumn get content=> text().named('post_content')();
  TextColumn get name=> text().named('post_name')();

}

