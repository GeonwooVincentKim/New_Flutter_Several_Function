import 'package:flutter/material.dart';


class BottomImage extends StatelessWidget{
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
              child: Image(
                image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
                fit: BoxFit.fitWidth,
              )
            )
          )
        ],
      ),
    );
  }
}