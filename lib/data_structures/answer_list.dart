
import 'package:sidlak/models/answer.dart';

class AnswerList {
  List<Answer> answerList;
  List<Map> mapList;
  bool isInstantiated = false;

  AnswerList(List<Map> map) : answerList = [], mapList = map;

  List<Answer> getList() {
    if (!isInstantiated) {
      _extractFromMap();
    }
    return answerList;
  }

  void _extractFromMap() {
    for (Map map in mapList) {
      answerList.add(
        Answer.fromMap(map)
      );
    }
    isInstantiated = true;
  }
}