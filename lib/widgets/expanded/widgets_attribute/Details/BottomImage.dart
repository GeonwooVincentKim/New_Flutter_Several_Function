import 'package:flutter/material.dart';


class BottomImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Image(
          image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
          fit: BoxFit.fitWidth,
        )
      )
    );
  }
}