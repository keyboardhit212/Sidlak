
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sidlak/models/answer.dart';
import 'package:sidlak/pages/quiz_page.dart';
import 'package:sidlak/utilities/correct_sound.dart';
import 'package:sidlak/utilities/question_provider.dart';
import 'package:sidlak/widgets/wrong_sound.dart';

class ChoiceButton extends StatefulWidget {

  final Answer answer;
  final QuizPageState quizState;
  final int id;

  const ChoiceButton({
    super.key,
    required this.answer,
    required this.quizState,
    required this.id
  });

  @override
  State<ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {

  Answer? _answer;
  Color color = Colors.white;
  QuestionProvider questionProvider = QuestionProvider();

  @override
  Widget build(BuildContext context) {

    _answer = widget.answer;

    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        onPressed: () async {
          if (_answer!.isTrue == 1) {
            CorrectSound.play();
            await questionProvider.markAsCorrect(widget.id);
            widget.quizState.increaseScore();
            setState(() {
              color = Colors.green;
            });
          }
          else {
            WrongSound.play();
            await questionProvider.markAsWrong(widget.id);
            setState(() {
              color = Colors.red;
            });
          }

          await Future.delayed(const Duration(seconds: 1), () {
            widget.quizState.increaseIndex();
          });
          
        }, 
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(MediaQuery.of(context).size.width, 65),
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: Text(
            _answer!.content,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Roboto',
              color: Colors.black,
              fontSize: 20.0,
              wordSpacing: -2,
            ),
          ),
        )
      ),
    );
  }
}