import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/font_style/FontStyle.dart';

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
        title: Text('ADD TO MY LIST', textAlign: TextAlign.center),
        titlePadding: EdgeInsets.symmetric(vertical: 20),
        contentPadding: EdgeInsets.zero,
        content: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
                    // CustomDivider(color: Colors.transparent),
                    transparent_divider(),
                    Row(
                        children: [
                          Expanded(
                            child: Text("Progress: ", style: TextStyle(
                              fontWeight: FontWeight.w300,
                            )),
                          ),

                          Expanded(
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black87, width: 1.5),
                                  ),
                                  hintText: '10%'),
                            ),
                          ),
                        ]
                    ),
                  ]
                ),
              ),
              transparent_divider(),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  // padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Text(
                    "+ Add to my List",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
