import 'package:flutter/material.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/Commons/round_image.dart';

// Image-Attributes that is belows in the Detail-Page part.
class ProfileImageButton extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
