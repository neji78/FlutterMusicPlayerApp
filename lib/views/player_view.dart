import 'package:flutter/material.dart';
import 'package:music_player/viewmodels/music_controller.dart';
import 'package:music_player/widgets/controller.dart';
import 'package:music_player/widgets/music_logo.dart';

class PlayerView extends StatelessWidget {
  final MusicController _musicController = MusicController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MusicLogo(),
            Text('Song Name', style: TextStyle(fontSize: 24)),
            Text('Artist Name', style: TextStyle(fontSize: 18)),
            Controller(
              onPlayMusicClicked: () {
                _musicController.play('assets/music/test.mp3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
