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
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        title: Text('Playing Now'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
        ],
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 32,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.shuffle_rounded)),
                Column(
                  children: [
                    Text('Song Name', style: TextStyle(fontSize: 24)),
                    Text('Artist Name', style: TextStyle(fontSize: 18)),
                  ],
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.loop))
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.play_arrow),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(24),
              ),
            )
            // MusicLogo(),
            // Text('Song Name', style: TextStyle(fontSize: 24)),
            // Text('Artist Name', style: TextStyle(fontSize: 18)),
            // Controller(
            //   onPlayMusicClicked: () {
            //     _musicController.play('assets/music/test.mp3');
            //   },
            // ),
          ],
        ),
    );
  }
}
