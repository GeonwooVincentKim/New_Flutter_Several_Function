import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';

// Dialog Menu
void showAlertDialog(BuildContext context) async {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String result = await showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Change Image'),
        content: Text("Do you wish to change Image?"),
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

// 'ADD TO MY LIST' Dialog.
void showAddListDialog(BuildContext context) async{
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String result = await showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('ADD TO MY LIST'),
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(20.0)), //this right here
        content: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
              // CustomDivider(color: Colors.transparent),
              transparent_divider(),
              Row(
                children: [
                  Expanded(
                    child: Text("Border", style: TextStyle(
                      fontWeight: FontWeight.w300,
                    )),
                  ),

                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87, width: 1.0),
                        ),
                        hintText: 'remember?'),
                    ),
                  )
                ]
              ),

              Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: const Color(0xDD000000),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
