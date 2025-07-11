import 'dart:ui';

import 'package:audiotags/audiotags.dart';

class Track {
  final String path;
  final Tag tag;

  Track({required this.path, required this.tag});

  /// Async constructor to create a Track from a path and read its tag
  static Future<Track> fromPath(String path) async {
    final tag = await AudioTags.read(path)?? Tag(pictures: []);;
    return Track(path: path, tag: tag);
  }
}


enum PlaybackState { stopped, playing, paused }
