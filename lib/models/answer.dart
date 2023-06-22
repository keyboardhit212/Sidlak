class Answer {

  int questionId;
  String content;
  int isTrue;

  Answer({
    required this.questionId,
    required this.content,
    required this.isTrue
  });

  Answer.fromMap(Map<dynamic, dynamic> map) :
  questionId = map['question_id'],
  content = map['content'],
  isTrue = map['is_true'];

}