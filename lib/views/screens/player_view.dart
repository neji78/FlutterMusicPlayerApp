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
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios),iconSize: 24),
        title: Text('Playing Now',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),iconSize: 24)
        ],
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 72,),
            SizedBox(height: 305,),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 32,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.shuffle_rounded),iconSize: 24),
                Column(
                  children: [
                    Text('Song Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                    Text('Artist Name', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300)),
                  ],
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.loop),iconSize: 24)
              ],
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous),iconSize: 45,),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.play_arrow,size: 45,),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                  )
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.skip_next),iconSize: 45),
              ],
            ),
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
