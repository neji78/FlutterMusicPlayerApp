import 'package:flutter/material.dart';
import 'package:music_player/views/screens/player_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PlayerView()),
            );
          },
          child: Text('Go to Player'),
        ),
      ),
    );
  }
}
