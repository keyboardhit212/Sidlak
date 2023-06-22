import 'package:flutter/material.dart';
import 'package:sidlak/utilities/theme_music.dart';

class MusicThemeButton extends StatefulWidget {
  const MusicThemeButton({super.key});

  @override
  State<MusicThemeButton> createState() => _MusicThemeButtonState();
}

class _MusicThemeButtonState extends State<MusicThemeButton> {

  Icon icon = const Icon(
    Icons.music_note,
    color: Colors.pink,
    size: 35.0,
  );


  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (ThemeMusic.isPlaying()) {
          setState(() {
            icon = const Icon(
              Icons.music_off,
              color: Colors.pink,
              size: 35.0,
            );
            ThemeMusic.pause(); 
          }); 
        }
        else {
          setState(() {
            icon = const Icon(
              Icons.music_note,
              color: Colors.pink,
              size: 35.0,
            );
          }); 
          ThemeMusic.resume();
        }
      }, 
      icon: icon
    );
  }
}