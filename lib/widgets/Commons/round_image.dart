import 'package:flutter/material.dart';

class RoundImage extends StatelessWidget {

  final double width;
  final double height;
  final String imageUrl;

  RoundImage({
    this.width = 100,
    this.height = 100,
    this.imageUrl = "assets/images/1.jpg"
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: Container(
        width: width,
        height: height,
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover
        )
      )
    );
  }
}