import 'package:flutter/material.dart';
import 'package:music_player/views/home_view.dart';
import 'package:music_player/views/player_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlayerView(),
    );
  }
}
