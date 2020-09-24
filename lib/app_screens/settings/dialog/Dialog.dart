import 'dart:ui';

import 'package:flutter/material.dart';

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
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'What do you want to remember?'),
              ),
              Expanded(
                child: RaisedButton(

                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: const Color(0xFF1BC0C5),
                ),
              )
            ],
          ),
        ),
      );
      // return AlertDialog(
      //   title: Text('ADD TO MY LIST'),
      //   content: Row(
      //     children: [
      //       Expanded(
      //         child: Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
      //       ),
      //       // Expanded(
      //       //   child: Row(
      //       //     children: [
      //       //       Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
      //       //     ],
      //       //   ),
      //       // ),
      //       // Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
      //     ],
      //   ),
      //   actions: <Widget>[
      //     Align(
      //       alignment: Alignment.bottomCenter,
      //       child: SizedBox(
      //
      //         child: RaisedButton(
      //           onPressed: () {},
      //           child: Text(
      //             "Save",
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           color: const Color(0xFF1BC0C5),
      //         ),
      //       ),
      //     )
      //
      //     // FlatButton(
      //     //   child: Text('OK', style: TextStyle(fontSize: 15, fontFamily: 'icomoon')),
      //     //   onPressed: () {
      //     //     Navigator.pop(context, "OK");
      //     //   },
      //     // ),
      //   ],
      // );
    },
  );
}