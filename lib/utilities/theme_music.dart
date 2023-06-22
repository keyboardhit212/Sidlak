import 'package:just_audio/just_audio.dart';

class ThemeMusic {

  static const String _track = "assets/music/theme.mp3";
  static AudioPlayer? _audioPlayer;
  static bool _isPlaying = false;

  static void play() async {
    _isPlaying = true;
    await _getInstance()!.setAsset(_track);
    await _getInstance()!.play();
  }

  static void pause() async {
    _isPlaying = false;
    await _getInstance()!.pause();
  }

  static void resume() async {
    _isPlaying = true;
    await _getInstance()!.play();
  }

  static void stop() async {
    _isPlaying = false;
    await _getInstance()!.stop();
  }

  static bool isPlaying() {
    return _isPlaying;
  }

  static AudioPlayer? _getInstance() {
    _audioPlayer ??= AudioPlayer();
    _audioPlayer!.setVolume(0.1);
    _audioPlayer!.setLoopMode(LoopMode.all);
    return _audioPlayer;
  }

 

}