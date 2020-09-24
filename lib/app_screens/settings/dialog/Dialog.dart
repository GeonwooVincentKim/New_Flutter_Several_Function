import 'package:flutter/material.dart';

// Dialog Menu
void showAlertDialog(BuildContext context) async {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String result = await showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Change your Background-Picture'),
        content: Text("Do you wish to change it??"),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.pop(context, "OK");
            },
          ),
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );
}