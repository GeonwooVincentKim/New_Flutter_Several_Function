import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';


class DropDownList extends StatelessWidget {
  final List<String> contentsList;
  final String contents;
  final Function onChange;

  DropDownList({@required this.contentsList, @required this.contents, @required this.onChange});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: contents,
      items: contentsList.map<DropdownMenuItem<String>>((contentsList){
        return DropdownMenuItem(
          value: contentsList,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(contentsList),
          )
        );
      }).toList(),
      onChanged: onChange,
    );
  }
}