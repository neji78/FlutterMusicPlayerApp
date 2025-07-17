import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:music_player/locator.dart';
import 'package:on_audio_query/on_audio_query.dart';

@singleton
class MusicController {
  final OnAudioQuery _audioQuery = OnAudioQuery();
  MusicController() {
    final logConfig =
        LogConfig(logType: LogType.VERBOSE, showDetailedLog: true);
    _audioQuery.setLogConfig(logConfig);
    _audioQuery.checkAndRequest(retryRequest: true);
  }

  Future<List<SongModel>> getSongs() async {
    if (!await _audioQuery.checkAndRequest()) return [];
    try {
      return await _audioQuery.querySongs();
    } catch (e) {
      return [];
    }
  }

  Future<Uint8List?> getImage(int id) async {
    if (!await _audioQuery.checkAndRequest()) return Uint8List(0);
    Uint8List? data = await _audioQuery.queryArtwork(
      id,
      ArtworkType.AUDIO,
    );
    return data;

  }
}
