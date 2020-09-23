import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Settings/FontAttribute/Contents.dart';


class SettingsText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          LocalID(),
          text_divider(),
          Email(),
          text_divider(),
          Address(),
          text_divider(),
        ]
      ),
    );
  }

}