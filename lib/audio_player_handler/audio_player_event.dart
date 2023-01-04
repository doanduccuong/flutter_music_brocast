part of 'audio_player_bloc.dart';

abstract class AudioPlayerEvent {}

class OnPlayerStateChange extends AudioPlayerEvent {
  final PlayerState playerState;

  OnPlayerStateChange({this.playerState = PlayerState.paused});
}

class OnDurationChange extends AudioPlayerEvent {
  final Duration duration;

  OnDurationChange({this.duration = Duration.zero});
}

class OnPositionChange extends AudioPlayerEvent {
  final Duration position;

  OnPositionChange({this.position = Duration.zero});
}

class InitializeAudio extends AudioPlayerEvent {}
