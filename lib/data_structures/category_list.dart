
import 'package:sidlak/models/category.dart';

class CategoryList {

  List<Category> categoryList;
  List<Map> mapList;
  bool isInstantiated = false;

  CategoryList(List<Map> map) : categoryList = [], mapList = map;

  List<Category> getList() {
    if (!isInstantiated) {
      _extractFromMap();
    }
    return categoryList;
  }

  void _extractFromMap() {
    for (Map map in mapList) {
      categoryList.add(
        Category.fromMap(map)
      );
    }
    isInstantiated = true;
  }

}