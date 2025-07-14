import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:music_player/components/rounded_avatar.dart';
import 'package:music_player/locator.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MusicDelegate extends StatelessWidget {
  final double height = 70;
  final _logger = getIt<Logger>();
  final SongModel _songModel;
  MusicDelegate(this._songModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white.withAlpha(77),
      highlightColor: Colors.white.withAlpha(26),
      onTap: () {
        _logger.d(_songModel);
      },
      child: Row(
        children: [
          RoundedAvatar(
            imageUrl: "assets/image/alen.jpg",
            width: height,
            height: height,
            radius: 20,
          ),
          const SizedBox(width: 8),
          Container(
            height: height,
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
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
