import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:music_player/components/rounded_avatar.dart';
import 'package:music_player/controllers/music_controller.dart';
import 'package:music_player/locator.dart';
import 'package:on_audio_query/on_audio_query.dart';

class MusicDelegate extends StatelessWidget {
  final double height = 70;
  final _logger = getIt<Logger>();
  final _musicController = getIt<MusicController>();
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
          FutureBuilder<Uint8List?>(
            future: _musicController.getImage(_songModel.id),
            builder: (context, snapshot) {
              return RoundedAvatar(
                imageData: snapshot.data,
                imageUrl: null,
                width: height,
                height: height,
                radius: 20,
              );
            },
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: height,
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _songModel.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    _songModel.artist ?? 'Unknown Artist',
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),

          // Spacer(),
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
