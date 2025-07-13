import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/components/music_list_delegate.dart';
import 'package:music_player/models/track.dart';
import 'package:music_player/viewmodels/playlist_view_model.dart';
import 'package:on_audio_query/on_audio_query.dart';

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("RECOMMENDATION",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              Text("See All", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        FloatingActionButton(onPressed: (){
          context.read<PlayListViewModel>().load();
        }),

        Expanded(
          child: BlocBuilder<PlayListViewModel, List<SongModel>>(
              builder: (context, state) {
            return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: state.length,
              itemBuilder: (context, index) => MusicDelegate(state[index]),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 20,
                );
              },
            );
          }),
        )
      ],
    ));
  }
}
