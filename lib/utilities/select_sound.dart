import 'package:flutter/services.dart';
import 'package:sidlak/utilities/sound_loader.dart';

class SelectSound {

  static const String _audioFile = "assets/audio/select.mp3";
  static late int _soundId;

  static void play() async {
    _soundId = await rootBundle.load(_audioFile).then((soundData) {
      return SoundLoader.getInstance()!.load(soundData);
    });
    await SoundLoader.getInstance()!.play(_soundId);
  }

  static void stop() {
    SoundLoader.getInstance()!.stop(_soundId);
  }

  static void dispose() {
    SoundLoader.getInstance()!.dispose();
  }

}