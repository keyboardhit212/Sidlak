import 'package:flutter/services.dart';
import 'package:sidlak/utilities/sound_loader.dart';

class WrongSound {

  static const String _audioFile = "assets/audio/wrong.mp3";
  static late int _soundId;

  static void play() async {
    _soundId = await rootBundle.load(_audioFile).then((soundData) {
      return SoundLoader.getInstance()!.load(soundData);
    });
    await SoundLoader.getInstance()!.play(_soundId);
  }

  static void stop() async {
    SoundLoader.getInstance()!.stop(_soundId);
  }

}