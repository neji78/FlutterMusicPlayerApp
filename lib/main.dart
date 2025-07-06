import 'package:flutter/material.dart';
import 'package:music_player/views/screens/home_view.dart';
import 'package:music_player/views/screens/player_view.dart';

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
