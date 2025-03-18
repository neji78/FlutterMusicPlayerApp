import 'package:flutter/material.dart';

class MusicLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/test.jpg"),
          fit: BoxFit.cover,
        ),
        border: Border.all(width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(60)),
      ),
    );
  }
}
