import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/provider.dart';
import 'package:flutter_app/app_screens/details/details_attributes/DetailsBody.dart';
import 'package:flutter_app/app_screens/discover/discover_attributes/DiscoverBody.dart';
import 'package:flutter_app/app_screens/settings/settings_attribute/Settings.dart';
import 'package:flutter_app/data/product_store.dart';
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
          // '/favorite': (context) => Favorite(),
          '/settings': (context) => Settings(),
          '/details': (context) => DetailPage(),
        },
        onGenerateRoute: (RouteSettings settings){
          final List<String> pathElements = settings.name.split('/');
          if(pathElements[0] != '') return null;
          if(pathElements[1] == 'game') {
            String gameID = pathElements[2];
            return MaterialPageRoute(
              builder: (BuildContext context) => DetailPage(),
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