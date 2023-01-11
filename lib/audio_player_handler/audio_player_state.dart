part of 'audio_player_bloc.dart';

@immutable
abstract class AudioPLayerState extends Equatable {}

class AudioPlayerApplicationState extends AudioPLayerState {
  final bool isPlaying;
  final String? currentPlayer;
  final Duration duration;
  final Duration position;

  AudioPlayerApplicationState({
    this.isPlaying = false,
    this.currentPlayer,
    this.duration = const Duration(
      days: 0,
      hours: 0,
      minutes: 56,
      seconds: 59,
      milliseconds: 30,
      microseconds: 10,
    ),
    this.position = Duration.zero,
  });

  AudioPlayerApplicationState copyWith({
    final AudioPlayerApplicationState? audioPlayerState,
    final bool? isPlaying,
    final String? currentPlayer,
    final Duration? duration,
    final Duration? position,
  }) {
    return AudioPlayerApplicationState(
      isPlaying: isPlaying ?? this.isPlaying,
      currentPlayer: currentPlayer ?? "",
      duration: duration ?? this.duration,
      position: position ?? this.position,
    );
  }

  @override
  List<Object?> get props => [
        isPlaying,
        // currentPlayer,
        duration,
        position,
      ];
}
