import 'package:flutter/material.dart';
import 'package:music_player/components/music_card.dart';

class RecentlyPlayed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("RECENTLY PLAYED", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              Text("See All", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        // Horizontal List
        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              MusicCard(
                imageUrl: 'assets/image/alen.jpg',
                title: 'Antretor',
                artist: 'yann tiarsen',
              ),
              MusicCard(
                imageUrl: 'assets/image/test.jpg',
                title: 'Back To Her Men',
                artist: 'Demien Rice',
              ),
              // Add more cards...
            ],
          ),
        ),
      ],
    );
  }
}