import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details.dart';


class DetailsBlock extends StatelessWidget{
  final String label;
  final String info;
  final Color infoColor;
  final double marginBottom;

  DetailsBlock({
    @required this.label,
    @required this.info,
    this.infoColor = textInfoColor,
    this.marginBottom = defaultPadding / 2
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Details(
          label: label,
          info: info,
          infoColor: infoColor,
        ),
        SizedBox(height: marginBottom),
      ]
    );
  }
  
}
