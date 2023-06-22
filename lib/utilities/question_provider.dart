import 'package:sidlak/utilities/answer_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sidlak/utilities/database_loader.dart';
import 'package:sidlak/models/category.dart';
import 'package:sidlak/models/question.dart';
import 'package:sidlak/models/answer.dart';
import 'package:sidlak/data_structures/question_list.dart';
import 'package:sidlak/data_structures/answer_list.dart';

class QuestionProvider {

  Future<List<Question>> retrieveAllByCategory(int categoryId) async {
    Database db = await DatabaseLoader.load();
    AnswerProvider answerProvider  = AnswerProvider();
    List<Map> list = await db.rawQuery(
      "SELECT * FROM question WHERE category_id = '$categoryId'"
    );
    QuestionList questionList = QuestionList(list);
    for (Question question in questionList.getList()) {
      List<Answer> answers = await answerProvider.retrieveAllByQuestion(question.id);
      question.addAnswers(answers);
    }
    return questionList.getList();
  }

  Future<bool> hasPassed(int categoryId) async {
    Database db = await DatabaseLoader.load();
    List<Map> list = await db.rawQuery(
      "SELECT * FROM question WHERE category_id = $categoryId AND is_correct = 1"
    );
    int total = await count(categoryId);
    if (list.length > (total / 2)) {
      return true;
    }
    return false;
  }

  Future<int> count(int categoryId) async {
    Database db = await DatabaseLoader.load();
    List<Map> list = await db.rawQuery(
      "SELECT * FROM question WHERE category_id = '$categoryId'"
    );
    return list.length;
  }

  Future<void> markAsCorrect(int questionId) async {
    Database db = await DatabaseLoader.load();
    await db.rawQuery(
      "UPDATE question SET is_correct = 1 WHERE id = $questionId"
    );
  }

  Future<void> markAsWrong(int questionId) async {
    Database db = await DatabaseLoader.load();
    await db.rawQuery(
      "UPDATE question SET is_correct = 0 WHERE id = $questionId"
    );
  }

  Future<void> markAllAsNull(int categoryId) async {
    Database db = await DatabaseLoader.load();
    await db.rawQuery(
      "UPDATE question SET is_correct = NULL WHERE category_id = $categoryId"
    );
  }

  Future<int> getScore(int categoryId) async {
    Database db = await DatabaseLoader.load();
    List<Map> score = await db.rawQuery(
      "SELECT * FROM question WHERE category_id = $categoryId AND is_correct = 1"
    );
    return score.length;
  }

  Future<bool> hasDone(int categoryId) async {
    Database db = await DatabaseLoader.load();
    List<Map> nullScores = await db.rawQuery(
      "SELECT * FROM question WHERE category_id = $categoryId AND is_correct IS NULL"
    );

    return (nullScores.isNotEmpty) ? false : true;
  }

}