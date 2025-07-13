import 'package:flutter/cupertino.dart';
import 'package:music_player/components/rounded_avatar.dart';
import 'package:music_player/models/track.dart';

class MusicDelegate extends StatelessWidget{
  final Track _track;
  MusicDelegate(this._track);

  @override
  Widget build(BuildContext context) {
      return Row(
        children: [
          RoundedAvatar(
            imageUrl: "assets/image/alen.jpg",
            width: 140,
            height: 140,
            radius: 12,
          ),
        ],
      );
  }

}