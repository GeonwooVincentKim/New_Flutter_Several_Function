import 'package:flutter/material.dart';

// Dialog for 'Setting' Application
void showAlertDialog(BuildContext context) async {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String result = await showDialog(
    context: context,
    // barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Add to my List'),
        // content: TextField(
        //   controller: _textFieldContrller
        // ),
        // content: Text("Do you wish add to your List??"),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context){return MyFavoritesPage();})
              // );
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
