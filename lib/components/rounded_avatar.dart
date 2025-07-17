import 'dart:typed_data';

import 'package:flutter/material.dart';

class RoundedAvatar extends StatelessWidget {
  final String? imageUrl;
  final Uint8List? imageData;
  final double width;
  final double height;
  final double radius;

  const RoundedAvatar({
    this.imageUrl,
    this.imageData,
    required this.width,
    required this.height,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    if (imageData != null) {
      imageWidget = Image.memory(imageData!, fit: BoxFit.cover);
    } else if (imageUrl != null) {
      imageWidget = Image.asset(imageUrl!, fit: BoxFit.cover);
    } else {
      imageWidget = Container(
        color: Colors.white,
        child: const Icon(Icons.music_note,color: Colors.black,),
      );// fallback
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
        width: width,
        height: height,
        child: imageWidget,
      ),
    );
  }
}
