import 'package:flutter/material.dart';
import 'package:sidlak/utilities/background_music.dart';

class ExitButton extends StatelessWidget {
  const ExitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            BackgroundMusic.stop();
            Navigator.pushNamed(context, '/homepage');
          }, 
          icon: const Icon(
            Icons.home,
            size: 35.0,
            color: Colors.white,
          )
        )
      ],
    );
  }
}