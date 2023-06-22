import 'package:flutter/material.dart';
import 'package:sidlak/utilities/background_music.dart';

class ResultDialog extends StatelessWidget {

  final int score;
  final int totalQuestions;

  ResultDialog({
    super.key,
    required this.score,
    required this.totalQuestions
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 500.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/results/${_imageName()}',
              height: 100.0,
            ),
            const SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                _description(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            const SizedBox(height: 70.0,),
            TextButton(
              onPressed: () {
                BackgroundMusic.stop();
                Navigator.of(context).pushNamedAndRemoveUntil('/homepage', (route) => false);
              }, 
              child: const Text(
                'Main Menu',
                style: TextStyle(
                  fontSize: 20.0
                ),
              ))
          ],
        ),
      ),
    );
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

  String _description() {
    if (score  == totalQuestions) {
      return 'Excellent! Congratulations on having a perfect score!';
    }
    else if (score >= (totalQuestions / 2) && score < totalQuestions) {
      return 'Awesome! Congratulations for scoring $score out of $totalQuestions!';
    }
    else {
      return 'You scored $score out of $totalQuestions. Study harder!';
    }
  }
}