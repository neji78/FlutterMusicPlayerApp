import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/track.dart';

class MusicPlayerState {
  final Track? currentTrack;
  final PlaybackState playbackState;
  final Duration position;

  MusicPlayerState({
    this.currentTrack,
    this.playbackState = PlaybackState.stopped,
    this.position = Duration.zero,
  });

  MusicPlayerState copyWith({
    Track? currentTrack,
    PlaybackState? playbackState,
    Duration? position,
  }) {
    return MusicPlayerState(
      currentTrack: currentTrack ?? this.currentTrack,
      playbackState: playbackState ?? this.playbackState,
      position: position ?? this.position,
    );
  }
}

class MusicPlayerCubit extends Cubit<MusicPlayerState> {
  MusicPlayerCubit() : super(MusicPlayerState());

  void play(Track track) {
    emit(state.copyWith(
      currentTrack: track,
      playbackState: PlaybackState.playing,
      position: Duration.zero,
    ));
    // Start actual playback here (e.g., using just_audio)
  }

  void pause() {
    emit(state.copyWith(playbackState: PlaybackState.paused));
    // Pause audio here
  }

  void resume() {
    emit(state.copyWith(playbackState: PlaybackState.playing));
    // Resume audio
  }

  void seek(Duration position) {
    emit(state.copyWith(position: position));
    // Seek in audio backend
  }

  void stop() {
    emit(state.copyWith(playbackState: PlaybackState.stopped, position: Duration.zero));
  }
}
