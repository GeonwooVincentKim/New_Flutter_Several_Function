import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/users.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/app_screens/Home/Discover.dart';
import 'package:flutter_app/app_screens/details/MyFavorites.dart';
import 'package:flutter_app/app_screens/settings/ModifyProfile.dart';
import 'package:flutter_app/app_screens/settings/Settings.dart';
import 'package:flutter_app/provider/ProductStore.dart';
import 'package:flutter_app/provider/game_provider.dart';
import 'package:provider/provider.dart';
import 'app_screens/Home/PageSlider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_ctx) => GameProvider()),
          ChangeNotifierProvider(create: (_ctx) => UserProvider()),
          ChangeNotifierProvider(create: (_ctx) => Cart()),
        ],
        child: MaterialApp(
          title: "My Flutter App",
          initialRoute: '/',
          routes: {
            '/': (context) => PageSlider(),
            '/discover': (context) => Discover(),
            '/favorite': (context) => Favorites(),
            '/settings': (context) => Setting(),
            '/settings/modify': (context) => ModifyProfile(),
            '/details': (context) => DetailPage(),
          },
          onGenerateRoute: (RouteSettings settings){
            final List<String> pathElements = settings.name.split("/");
            if(pathElements[0] != '') return null;
            if(pathElements[1] == 'game'){
              String gameId = pathElements[2];
              return MaterialPageRoute(builder: (BuildContext context) => DetailPage(gameID: gameId),);
            }
            return null;
          },
          onUnknownRoute: (RouteSettings settings){
            return MaterialPageRoute(builder: (BuildContext context) => PageSlider(),);
          },
        ),
    );
  }
}
