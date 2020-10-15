import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings.dart';
import 'package:flutter_app/app_screens/settings/settings_attribute/SettingsBody.dart';
import 'package:flutter_app/main.dart';

class SideMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.cover
              ),
            ), child: null,
          ),
          ListTile(
            title: Text("Home-Page"),
            onTap: (){
              main();
            },
            // title: Text("Home"),
          ),
          ListTile(
            title: Text("Settings"),
            onTap: (){
              // It cannot move to Settings();
              // So I alternated as settings_main();.
              settings_main();
            },
          ),
        ],
      ),
    );
  }

}