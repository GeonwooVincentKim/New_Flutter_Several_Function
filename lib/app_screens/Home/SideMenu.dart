import 'package:flutter/material.dart';


class SideMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage( image: AssetImage("assets/images/1.jpg"), fit: BoxFit.cover ),
            ), child: null,
          ),
          ListTile(
            title: Text("Home-Page"),
            onTap: (){ Navigator.pushNamed(context, '/'); },
          ),
          ListTile(
            title: Text("Settings"),
            onTap: (){ Navigator.pushNamed(context, '/settings'); },
          ),
          ListTile(
            title: Text("Create Game"),
            onTap: (){ Navigator.pushNamed(context, '/createGame');}
          )
        ],
      ),
    );
  }
}
