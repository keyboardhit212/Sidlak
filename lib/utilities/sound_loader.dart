import 'package:soundpool/soundpool.dart';

class SoundLoader {

  static Soundpool? _soundpool;

  static Soundpool? getInstance() {
    _soundpool ??= Soundpool.fromOptions(options: SoundpoolOptions.kDefault);
    return _soundpool;
  }

}