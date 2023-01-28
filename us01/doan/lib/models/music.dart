import 'package:assets_audio_player/assets_audio_player.dart';

class Mp3Simple {
  // ignore: prefer_final_fields
  static AssetsAudioPlayer _play = AssetsAudioPlayer();
  static Future init() async {
    await _play.open(Audio('audio/music.mp3'), autoStart: false, showNotification: false);
    VolumeMP3(1);

    await _play.play();
    await _play.setLoopMode(LoopMode.single);
  }

  // ignore: non_constant_identifier_names
  static Future VolumeMP3(double vol) async {
  
      await _play.setVolume(vol);
    }
  }
