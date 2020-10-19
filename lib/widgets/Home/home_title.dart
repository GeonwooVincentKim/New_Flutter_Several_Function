import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';


// ignore: must_be_immutable
class ProgressText extends StatelessWidget{
  final String title;

  ProgressText({
    @required this.title
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: mainFont
          ),
          CustomDivider(color: Colors.black87)
          // Divider(color: textGreyColor)
        ]
      )
    );
  }
}
