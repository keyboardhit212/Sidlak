import 'package:sidlak/data_structures/answer_list.dart';
import 'package:sidlak/models/answer.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sidlak/utilities/database_loader.dart';


class AnswerProvider {

  Future<List<Answer>> retrieveAllByQuestion(int questionId) async {
    Database db = await DatabaseLoader.load();
    List<Map> list = await db.rawQuery(
      "SELECT * FROM answer WHERE question_id = '$questionId'"
    );
    AnswerList answerList = AnswerList(list);
    return answerList.getList();
  }

  


}