import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';

class MyFavoritesPage extends StatelessWidget{
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
      body: MyFavoritesPageBody(),
    );
  }
}

class MyFavoritesPageBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

      ),
    );
  }

}