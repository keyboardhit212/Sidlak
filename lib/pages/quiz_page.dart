import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sidlak/models/answer.dart';
import 'package:sidlak/models/question.dart';
import 'package:sidlak/utilities/theme_music.dart';
import 'package:sidlak/widgets/choice_button.dart';
import 'package:sidlak/widgets/exit_button.dart';
import 'package:sidlak/widgets/music_button.dart';
import 'package:sidlak/widgets/result_dialog.dart';
import 'package:sidlak/utilities/background_music.dart';


class QuizPage extends StatefulWidget {

  final List<Question> questions;
  final List<Color> colors;

  const QuizPage({
    super.key,
    required this.questions,
    required this.colors
  });

  @override
  State<QuizPage> createState() => QuizPageState();
}

class QuizPageState extends State<QuizPage> {

  List<Question>? _questions;
  int index = 0;
  int questionNo = 0;
  int score = 0;
  final int _randomNumber = Random().nextInt(4);

  @override
  void initState() {
    super.initState();
    _questions = widget.questions..shuffle();
    BackgroundMusic.play(_randomNumber);
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: WillPopScope(
        onWillPop: () async {
          BackgroundMusic.stop();
          ThemeMusic.play();
          return true;
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row( //App Functions
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExitButton(),
                        MusicButton()
                      ],
                    ),
                    const SizedBox(height: 60.0,),
                    QuestionNumberText(current: (index + 1).toString(), total: _questions!.length.toString()),
                    const SizedBox(height: 20.0),
                    QuestionText(
                      question: _questions!.elementAt(index).content,
                    ),
                    const SizedBox(height: 65),
                    Column(
                      children: [
                        for (Answer answer in _questions!.elementAt(index).answers!)
                          ChoiceButton(
                            key: GlobalKey(), 
                            answer: answer, quizState: this,
                            id: _questions!.elementAt(index).id
                          )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void increaseIndex() {
    if (index < _questions!.length - 1) {
      setState(() {
        index++;
      });
    }
    else {
      showDialog(
        context: context,
          builder: (BuildContext context) {
            return ResultDialog(
              score: score, 
              totalQuestions: _questions!.length
            );
          }
      );
    }
  }

  void increaseScore() {
    score++;
  }

  int getQuestionId() {
    return _questions!.elementAt(index).id;
  }

}

class QuestionText extends StatelessWidget {

  final String question;
  
  const QuestionText({
    super.key,
    required this.question
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      softWrap: true,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 33.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
        letterSpacing: 0
      ),
    );
  }
}

class QuestionNumberText extends StatelessWidget {

  final String current;
  final String total;

  const QuestionNumberText({
    super.key,
    required this.current,
    required this.total
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Question $current out of $total',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 19.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.normal,
        letterSpacing: 0
      ),
    );
  }
}