import 'package:flutter/material.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';


AppBar HomeAppBar(title, showStar, context){
  return AppBar(
    backgroundColor: Colors.black87,
    title: Text(title),
    centerTitle: true,
    actions: [
      showStar ?
      IconButton(
          icon: Icon(
            IconMoon.istarfull,
            color: Colors.white,
          ),
          onPressed: (){
            print("Testing..");
            Navigator.pushNamed(context, '/favorite');
          }
      ) : Container(),
      IconButton(
          icon: Icon(
            Icons.tune,
            color: Colors.white,
          ),
          onPressed: (){
            print("Not");
            // DetailBody(gameDetailBody: null,);
          }
      ),
    ],
  );
}