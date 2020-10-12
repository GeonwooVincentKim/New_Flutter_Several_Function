import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';

// ignore: non_constant_identifier_names
AppBar HomeAppbar (title, showStar, context) {
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

