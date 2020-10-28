import 'package:flutter/material.dart';


class RoundImage extends StatelessWidget {

  final double width;
  final double height;
  final String imageUrl;

  RoundImage({
    this.width = 100,
    this.height = 100,
    // this.imageUrl = "assets/images/1.jpg"
    this.imageUrl = "https://cdn.pixabay.com/photo/2016/07/01/23/16/amusement-park-1492099_960_720.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: Container(
        width: width,
        height: height,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover
        )
      )
    );
  }
}