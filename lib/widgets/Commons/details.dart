import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';


class Details extends StatelessWidget{
  final String label;
  final String info;
  final Color infoColor;

  Details({
    @required this.label,
    @required this.info,
    this.infoColor = textInfoColor
  });
  
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: "$label: ".toUpperCase(),
            style: TextStyle(
              color: textAccentColor,
            )
          ),
          TextSpan(
            text: info,
            style: TextStyle(color: infoColor)
          ),
        ]
      )
    );
  }

}