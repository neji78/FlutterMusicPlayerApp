import 'package:flutter/cupertino.dart';

class RoundedAvatar extends StatelessWidget{
  final String imageUrl;
  final double height;
  final double width;
  final double radius;
  const RoundedAvatar({required this.imageUrl, required this.height, required this.width, required this.radius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        imageUrl,
        width: height,
        height: width,
        fit: BoxFit.cover,
      ),
    );
  }

}