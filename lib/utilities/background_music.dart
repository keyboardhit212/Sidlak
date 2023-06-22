import 'package:just_audio/just_audio.dart';

class BackgroundMusic {

  static final List<String> _tracks = [
    'assets/music/best_adventure.mp3',
    'assets/music/frighten.mp3',
    'assets/music/happiness.mp3',
    'assets/music/happy_kids.mp3'
  ];
  static AudioPlayer? _audioPlayer;
  static bool _isPlaying = false;

  static void play(int track) async {
    _isPlaying = true;
    await _getInstance()!.setAsset(_selectTrack(track));
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

  static String _selectTrack(int trackNo) {
    if (trackNo >= 4) {
      return _tracks.elementAt(trackNo % 4);
    }
    else if (trackNo < 0) {
      return _tracks.elementAt(trackNo.abs() % 4);
    }

    return _tracks.elementAt(trackNo);
  }

}