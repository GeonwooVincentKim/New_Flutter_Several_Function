import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/app_screens/settings/SideMenu.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';

// ignore: non_constant_identifier_names
AppbarActions(){
  return <Widget>[
    IconButton(
        icon: Icon(
          IconMoon.istarfull,
          color: Colors.white,
        ),
        onPressed: (){
          SideMenu();
        }
    ),
    IconButton(
        icon: Icon(
          Icons.tune,
          color: Colors.white,
        ),
        onPressed: (){
          DetailBody();
        }
    ),
  ];
}

