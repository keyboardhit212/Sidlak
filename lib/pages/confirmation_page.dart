import 'package:flutter/material.dart';
import 'package:sidlak/models/question.dart';
import 'package:sidlak/pages/quiz_page.dart';
import 'package:sidlak/pages/home_page.dart';
import 'package:sidlak/utilities/question_provider.dart';
import 'package:sidlak/utilities/select_sound.dart';
import 'package:sidlak/utilities/theme_music.dart';
import 'package:sidlak/widgets/result_dialog.dart';
import 'package:sidlak/widgets/score_dialog.dart';
import 'package:sidlak/widgets/text_widgets/level_text.dart';
import 'package:sidlak/widgets/text_widgets/description_text.dart';
import 'package:sidlak/widgets/text_widgets/phrase_text.dart';

class ConfirmationPage extends StatefulWidget {

  final int id;
  final String image;
  final List<Color> colors;
  final String level;
  final String description;
  final String phrase;

  const ConfirmationPage({
    super.key,
    required this.id,
    required this.image,
    required this.level,
    required this.description,
    required this.phrase,
    required this.colors
  });

  @override
  // ignore: no_logic_in_create_state
  State<ConfirmationPage> createState() => _ConfirmationPageState(
    id: id,
    image: image,
    level: level,
    description: description,
    phrase: phrase,
    colors: colors
  );
}

class _ConfirmationPageState extends State<ConfirmationPage> {

  int id;
  String image;
  List<Color> colors;
  String level;
  String description;
  String phrase;

  _ConfirmationPageState({
    required this.id,
    required this.image,
    required this.level,
    required this.description,
    required this.phrase,
    required this.colors
  });


  @override
  Widget build(BuildContext context) {

    QuestionProvider questionProvider = QuestionProvider();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      closeButton(),
                      scoreButton(questionProvider, id, context)
                    ],
                  ),
                  const SizedBox(height: 70.0,),
                  Center(
                    child: Image.asset(
                      image,
                      width: 200.0,
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  LevelText(level: level),
                  DescriptionText(description: description),
                  const SizedBox(height: 20.0,),
                  PhraseText(phrase: phrase),
                  const SizedBox(height: 100.0,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: colors[0],
                      elevation: 5.0,
                      minimumSize: Size(MediaQuery.of(context).size.width, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Text(
                      'Play'.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () async {
                      showDialog(
                        context: context,
                         builder: (BuildContext context) {
                          return ConfirmationDialog(
                            id: id,
                            colors: colors,
                            questionProvider: questionProvider,
                          );
                         }
                      );
                      
                    },
                  )
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget closeButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          }, 
          icon: const Icon(
            Icons.arrow_back,
            size: 35.0,
            color: Colors.white,
          )
        )
      ],
    );
  }

  Widget scoreButton(QuestionProvider questionProvider, int categoryId, BuildContext context) {
    return IconButton(
      onPressed: () async {
        int score = await questionProvider.getScore(categoryId);
        int totalQuestions = await questionProvider.count(categoryId);
        bool hasStarted = await questionProvider.hasDone(categoryId);
        // ignore: use_build_context_synchronously
        showDialog(
            context: context,
              builder: (BuildContext context) {
              return ScoreDialog(
                score: score, 
                totalQuestions: totalQuestions, 
                hasStarted: hasStarted
              );
              }
          );

      },
      icon: const Icon(
        Icons.score,
        size: 35.0,
        color: Colors.white,
      )
    );
  }
}


class ConfirmationDialog extends StatelessWidget {

  final List<Color> colors;
  final QuestionProvider questionProvider;
  final int id;

  const ConfirmationDialog({
    super.key,
    required this.colors,
    required this.questionProvider,
    required this.id
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Discard Changes'),
      content: const Text('Saved data will be overwritten! Press continue to proceed.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
           child: const Text('Cancel')
        ),
        TextButton(
          onPressed: () async {
            ThemeMusic.stop();
            await questionProvider.markAllAsNull(id);
            await questionProvider.retrieveAllByCategory(id).then((value) {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(
                    questions: value,
                    colors: colors,
                  ),
                ),
              );
            });
          },
          child: const Text('Continue')
        )
      ],
    );
  }
}