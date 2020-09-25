import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'details_attributes/DetailAttribute.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("GAME TITLE"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              IconMoon.iedit,
              color: Colors.white,
            ),
            onPressed: (){
              showAddListDialog(context);
            }
          ),
        ],
      ),
      body: DetailBody(),
    );
  }
}


class DetailBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: imageAttribute(),
                ),

                // I should convert as CircularProgressIndicator function.
                progressBar(),
                Center(
                  child: TextAttribute(),
                ),
                Center(
                  child: BottomImage(),
                ),
              ],
            ),
          ),
        )
        // padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
      ),
    );
  }
}


