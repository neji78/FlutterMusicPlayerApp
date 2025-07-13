import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String artist;

  const MusicCard({required this.imageUrl, required this.title, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl,
              width: 140,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Text(artist, style: TextStyle(color: Colors.grey[400], fontSize: 12)),
        ],
      ),
    );
  }
}
