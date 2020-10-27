import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details.dart';


class DetailsForm extends StatelessWidget{
  final String contentsTitle;
  final String contentsInfo;
  final Color infoColor;
  final double marginBottom;

  DetailsForm({
    @required this.contentsTitle,
    @required this.contentsInfo,
    this.infoColor = textInfoColor,
    this.marginBottom = defaultPadding / 2
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Details(
          contentsTitle: contentsTitle,
          contentsInfo: contentsInfo,
        ),
        SizedBox(height: marginBottom),
      ],
    );
  }

}