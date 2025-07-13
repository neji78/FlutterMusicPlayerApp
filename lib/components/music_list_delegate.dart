import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:music_player/components/rounded_avatar.dart';
import 'package:music_player/locator.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MusicDelegate extends StatelessWidget {
  final _logger = getIt<Logger>();
  final SongModel _songModel;
  MusicDelegate(this._songModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white.withAlpha(77),
      highlightColor: Colors.white.withAlpha(26),
      onTap: () {},
      child: Row(
        children: [
          RoundedAvatar(
            imageUrl: "assets/image/alen.jpg",
            width: 104,
            height: 104,
            radius: 20,
          ),
          const SizedBox(width: 8),
          Container(
            height: 104,
            padding: EdgeInsets.only(top: 12,bottom: 30,left: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(_songModel.title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500)),
              Spacer(),
              Text(_songModel.artist.toString(),
                  style: TextStyle(color: Colors.grey[400], fontSize: 12)),
            ]),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
