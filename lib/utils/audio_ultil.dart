class AudioPLayerUtil {
  static final AudioPLayerUtil _audioPlayer = AudioPLayerUtil._internal();

  factory AudioPLayerUtil() {
    return _audioPlayer;
  }

  AudioPLayerUtil._internal();
}