import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Settings/FontAttribute.dart';

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