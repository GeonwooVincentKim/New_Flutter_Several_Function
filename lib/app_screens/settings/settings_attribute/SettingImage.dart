import 'package:flutter/material.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';

// Image-Attributes that is belows in the Detail-Page part.
class ImageAttribute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.cover,
          image: new NetworkImage(
              'https://i.pinimg.com/originals/c2/47/e9/c247e913a0214313045a8a5c39f8522b.jpg'
          ),
        ),
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            bottom: -10, right: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                color: Colors.grey,
                padding: EdgeInsets.all(10),
                child: Icon(
                  IconMoon.iedit,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
