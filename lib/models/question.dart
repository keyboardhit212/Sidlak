import 'package:sidlak/models/answer.dart';

class Question {

  int id;
  int categoryId;
  String content;
  int? isCorrect;
  List<Answer>? answers;


  Question({
    required this.id,
    required this.categoryId,
    required this.content,
    this.isCorrect
  });

  Question.fromMap(Map<dynamic, dynamic> map) :
  id = map['id'],
  categoryId = map['category_id'],
  content = map['content'],
  isCorrect = map['is_correct'];

  void addAnswers(List<Answer> answers) {
    this.answers = answers;
  }

}