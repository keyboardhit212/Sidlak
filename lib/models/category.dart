
import 'package:sidlak/models/data_model.dart';

class Category {

  int id;
  String name;

  Category({required this.id, required this.name});

  Category.fromMap(Map<dynamic, dynamic> map) : id = map['id'], name = map['name'];

  Map<dynamic, dynamic> toMap(Category category) {
    return {
      'id': category.id,
      'name': category.name
    };
  }
  
  

}