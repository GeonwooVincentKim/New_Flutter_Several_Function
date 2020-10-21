import 'package:flutter/material.dart';


class RoundImage extends StatelessWidget{
  final double width;
  final double height;
  final String ImageURL;

  RoundImage({
    this.width = 100,
    this.height = 100,
    this.ImageURL = "assets/images/1.jpg"
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: Container(
        width: width,
        height: height,
        child: Image.asset(
          ImageURL,
          fit: BoxFit.cover
        )
      ),
    );
  }

}