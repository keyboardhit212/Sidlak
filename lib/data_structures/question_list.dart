import 'package:sidlak/models/answer.dart';
import 'package:sidlak/models/question.dart';

class QuestionList {
  List<Question> questionList;
  List<Map> mapList;
  bool isInstantiated = false;

  QuestionList(List<Map> map) : questionList = [], mapList = map;

  List<Question> getList() {
    if (!isInstantiated) {
      _extractFromMap();
    }
    return questionList;
  }

  void _extractFromMap() {
    for (Map map in mapList) {
      questionList.add(
        Question.fromMap(map)
      );
    }
    isInstantiated = true;
  }


}