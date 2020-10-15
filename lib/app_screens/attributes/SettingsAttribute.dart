import 'package:flutter/material.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/Commons/round_image.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Settings/FontAttribute.dart';

// Image-Attributes that is belows in the Detail-Page part.
class ProfileImageButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // Container(
    //   width: 150,
    //   height: 150,
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     image: new DecorationImage(
    //       fit: BoxFit.cover,
    //       image: new NetworkImage(
    //           'https://i.pinimg.com/originals/c2/47/e9/c247e913a0214313045a8a5c39f8522b.jpg'
    //       ),
    //     ),
    //   ),
    //   child: 
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        RoundImage(),
        Positioned(
          bottom: -10, right: 10,
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
    );
  }
}


// Text-Attributes that is belows in the Detail-Page part.
class TextAttribute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              // Title
              SettingsText(),
            ],
          ),
        ],
      )
    );
  }
}