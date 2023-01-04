import 'package:equatable/equatable.dart';

class AudioPlayerModel extends Equatable {
  final String id;

  // final Audio audio;
  final bool isPlaying;

  const AudioPlayerModel({
    this.isPlaying = false,
    this.id = "",
  });

  @override
  List<Object> get props => [this.id, this.isPlaying];

  @override
  bool get stringify => true;

  AudioPlayerModel copyWithIsPlaying(bool isPlaying) {
    return AudioPlayerModel(id: this.id, isPlaying: isPlaying);
  }
}
