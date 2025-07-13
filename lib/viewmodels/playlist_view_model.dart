import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/controllers/music_controller.dart';
import 'package:music_player/locator.dart';
import 'package:on_audio_query/on_audio_query.dart';

class PlayListViewModel extends Cubit<List<SongModel>>{
  final _musicController = getIt<MusicController>();
  PlayListViewModel(
      ) : super([]);
  Future<void> load() async {
    state.addAll(await _musicController.getSongs());
    emit(state);
  }
}