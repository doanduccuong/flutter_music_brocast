import 'dart:async';

import 'package:audioplayers/audioplayers.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_base_project/features/data/data_source/local_storage.dart';
import 'package:flutter_base_project/features/domain/repositories/user_repository.dart';

import '../features/presentation/page/home/home_tab/news_tab.dart';

part 'audio_player_event.dart';

part 'audio_player_state.dart';

class AudioPlayerApplicationBloc
    extends Bloc<AudioPlayerEvent, AudioPlayerApplicationState> {
  final audioPlayer = AudioPlayer();
  final UserRepository authPlayerRepository;
  AudioPlayerApplicationBloc({
    required this.authPlayerRepository,
  }) : super(AudioPlayerApplicationState()) {
    audioPlayer.onPlayerStateChanged.listen((PlayerState playerState) {
      add(OnPlayerStateChange(playerState: playerState));
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      add(OnDurationChange(duration: newDuration));
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      add(OnPositionChange(position: newPosition));
    });
    on<InitializeAudio>(_initialAudioPlayer);
    on<OnPlayerStateChange>(_onPlayerStateChange);
    on<OnDurationChange>(_onDurationStateChange);
    on<OnPositionChange>(_onPositionChange);
  }

  Future<void> _initialAudioPlayer(
    InitializeAudio event,
    Emitter<AudioPlayerApplicationState> emit,
  ) async {
    final currentPLayMusic = await LocalStorage.getCurrentPlayMusic();
    emit(state.copyWith(currentPlayer: currentPLayMusic));
  }

  void _onPlayerStateChange(
    OnPlayerStateChange event,
    Emitter<AudioPlayerApplicationState> emit,
  ) {
    print(state);
    emit(AudioPlayerApplicationState(isPlaying: event.playerState == PlayerState.playing));
  }

  void _onDurationStateChange(
    OnDurationChange event,
    Emitter<AudioPlayerApplicationState> emit,
  ) {
    emit(state.copyWith(duration: event.duration));
  }

  void _onPositionChange(
    OnPositionChange event,
    Emitter<AudioPlayerApplicationState> emit,
  ) {
    emit(state.copyWith(position: event.position));
  }
}
