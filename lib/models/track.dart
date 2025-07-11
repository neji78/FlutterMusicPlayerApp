class Track {
  final String title;
  final String artist;
  final Duration duration;

  Track({required this.title, required this.artist, required this.duration});
}

enum PlaybackState { stopped, playing, paused }
