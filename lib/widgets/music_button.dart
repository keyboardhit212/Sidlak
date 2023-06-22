import 'package:flutter/material.dart';
import 'package:sidlak/utilities/background_music.dart';

class MusicButton extends StatefulWidget {
  const MusicButton({super.key});

  @override
  State<MusicButton> createState() => _MusicButtonState();
}

class _MusicButtonState extends State<MusicButton> {

  Icon icon = const Icon(
    Icons.music_note,
    color: Colors.white,
    size: 35.0,
  );

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (BackgroundMusic.isPlaying()) {
          setState(() {
            icon = const Icon(
              Icons.music_off,
              color: Colors.white,
              size: 35.0,
            );
            BackgroundMusic.pause(); 
          }); 
        }
        else {
          setState(() {
            icon = const Icon(
              Icons.music_note,
              color: Colors.white,
              size: 35.0,
            );
            
          }); 
          BackgroundMusic.resume();
        }
      }, 
      icon: icon
    );
  }
}