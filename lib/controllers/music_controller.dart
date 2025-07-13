import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:music_player/locator.dart';
import 'package:on_audio_query/on_audio_query.dart';

@singleton
class MusicController{
  final OnAudioQuery _audioQuery = OnAudioQuery();


  Future<List<SongModel>> getSongs() async {
    try {
      return await _audioQuery.querySongs();
    } catch (e) {
      // _logger.e(e);
      return [];
    }
  }

}