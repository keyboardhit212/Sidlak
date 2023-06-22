import 'package:sqflite/sqflite.dart';
import 'package:sidlak/utilities/database_loader.dart';
import 'package:sidlak/models/category.dart';
import 'package:sidlak/data_structures/category_list.dart';


class CategoryProvider {

  Future<List<Category>> getAll() async {
    Database db = await DatabaseLoader.load();
    List<Map> list = await db.rawQuery(
      "SELECT * FROM category"
    );
    CategoryList categoryList = CategoryList(list);
    return categoryList.getList();
  }

  Future<Category> getById(int id) async {
    Database db = await DatabaseLoader.load();
    List<Map> list = await db.rawQuery(
      "SELECT * FROM category WHERE id = '$id' LIMIT 1"
    );
    CategoryList categoryList = CategoryList(list);
    return categoryList.getList()[0];
  }
}