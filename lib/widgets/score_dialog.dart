import 'package:flutter/material.dart';

class ScoreDialog extends StatelessWidget {

  final int score;
  final int totalQuestions;
  final bool hasStarted;

  const ScoreDialog({
    super.key,
    required this.score,
    required this.totalQuestions,
    required this.hasStarted
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
          height: 350.0,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 30.0),
                child: Text(
                  'Score',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Image.asset(
                'assets/images/results/${_imageName()}',
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  _getScore(),
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }

  String _getScore() {
    if (hasStarted) {
      return '$score out of $totalQuestions';
    }
    return 'No score yet';
  }
  
  String _imageName() {
    if (score  == totalQuestions) {
      return 'trophy.png';
    }
    else if (score >= (totalQuestions / 2) && score < totalQuestions) {
      return 'medal.png';
    }
    else {
      return 'target.png';
    }
  }


}