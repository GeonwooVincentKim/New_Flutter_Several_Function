import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/provider.dart';
import 'package:flutter_app/app_screens/Details.dart';
import 'package:flutter_app/app_screens/Discover.dart';
import 'package:flutter_app/app_screens/MyFavorites.dart';
import 'package:flutter_app/app_screens/Settings.dart';
import 'package:flutter_app/app_screens/app_attributes/ModifyProfile.dart';
import 'package:flutter_app/Provider/product_store.dart';
import 'package:provider/provider.dart';
import 'app_screens/PageList.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_ctx) => GameProvider()),
        ChangeNotifierProvider(create: (_ctx) => Cart()),
      ],
      child: MaterialApp(
        title: "Flutter Application",
        initialRoute: '/',
        routes: {
          '/': (context) => PageTouch(),
          '/discover': (context) => Discover(),
          '/favorite': (context) => Favorites(),
          '/settings': (context) => Settings(),
          '/modify': (context) => ModifyProfile(),
          '/details': (context) => DetailPage(),
        },
        onGenerateRoute: (RouteSettings settings){
          final List<String> pathElements = settings.name.split('/');
          if(pathElements[0] != '') return null;
          if(pathElements[1] == 'game') {
            String gameID = pathElements[2];
            return MaterialPageRoute(
              builder: (BuildContext context) => DetailPage(gameID: gameID),
              // builder: (BuildContext context) => DetailPage(gameID: gamdID),
            );
          }
        },
        onUnknownRoute: (RouteSettings settings){
          return MaterialPageRoute(
            builder: (BuildContext context) => PageTouch(),
          );
        },
      )
    );
  }
}