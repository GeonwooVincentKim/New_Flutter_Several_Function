import 'package:flutter/material.dart';


class BottomImage extends StatelessWidget{
  final String bottomImages;

  BottomImage({
    @required this.bottomImages
  });

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            // To separate between spaces of images, I've just set width as 150.
            // Otherwise, the images between width of images stick together.
            // (Horizontal-Part).
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                bottomImages,
                fit: BoxFit.fitWidth,
              ),
            )
          )
        ],
      ),
    );
  }
}