import 'dart:ui';

class Track {
  final String path;
  final String title;
  final String artist;
  final String image;

  Track({
    this.title = 'No Title',
    this.artist = 'No Artist',
    this.image = '',
    this.path = '',
  });

}


enum PlaybackState { stopped, playing, paused }
