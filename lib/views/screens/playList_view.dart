import 'package:flutter/material.dart';
import 'package:music_player/views/playlist/recently_played.dart';
import 'package:standard_searchbar/old/standard_searchbar.dart';

import '../../components/music_card.dart';

class PlayListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Play List"),
        //   centerTitle: true,
        // ),
        backgroundColor: Color(0xff0F0817),
        body: Container(
          margin: EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            spacing: 20,
            children: [
              StandardSearchBar(
                height: 65,
                backgroundColor: Colors.white.withAlpha(15),
                shadow: [],
              ),
              RecentlyPlayed()
            ],
          ),
        ));
  }
}
