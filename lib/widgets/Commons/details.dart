import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';


class Details extends StatelessWidget{
  final String label;
  final String info;

  Details({
    @required this.label,
    @required this.info,
  });
  
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: "$label: ".toUpperCase(),
            style: settingsContextFont
          ),
          TextSpan(
            text: info,
            style: settingsSubContextFont
          ),
        ]
      )
    );
  }
}
