import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/font/FontAttribute/Contents.dart';


class SettingsText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          LocalID(),
          CustomDivider(color: Colors.transparent,),
          Email(),
          CustomDivider(color: Colors.transparent,),
          Address(),
          CustomDivider(color: Colors.transparent,),
        ]
      ),
    );
  }

}