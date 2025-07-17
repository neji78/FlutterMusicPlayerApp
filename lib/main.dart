import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:music_player/viewmodels/player_view_model.dart';
import 'package:music_player/viewmodels/playlist_view_model.dart';
import 'package:music_player/views/screens/home_view.dart';
import 'package:music_player/views/screens/playList_view.dart';
import 'package:music_player/views/screens/player_view.dart';

import 'locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ Required!
  configureDependencies();
  final _logger = getIt<Logger>();
  _logger.i("start of app");
  runApp(
    MyApp(),
  );
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
      home: PlayListView(),
      // home: BlocProvider(create: (_) => MusicPlayerCubit(), child: PlayerView()),
    );
  }
}
