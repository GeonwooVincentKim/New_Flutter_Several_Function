import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/users.dart';
import 'package:flutter_app/app_screens/Home/FilterPage.dart';
import 'package:flutter_app/app_screens/Home/GameCreator.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/app_screens/Home/Discover.dart';
import 'package:flutter_app/app_screens/details/MyFavorites.dart';
import 'package:flutter_app/app_screens/settings/ModifyProfile.dart';
import 'package:flutter_app/app_screens/settings/Settings.dart';
import 'package:flutter_app/provider/filter.dart';
import 'package:flutter_app/provider/games_provider.dart';
import 'package:flutter_app/provider/genres.dart';
import 'package:flutter_app/provider/platforms.dart';
import 'package:flutter_app/provider/publishers_provider.dart';
import 'package:provider/provider.dart';
import 'app_screens/Home/PageSlider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_ctx) => GameProvider()),
          ChangeNotifierProvider(create: (_ctx) => UserProvider()),
          ChangeNotifierProvider(create: (_ctx) => GenreProvider()),
          ChangeNotifierProvider(create: (_ctx) => PlatformProvider()),
          ChangeNotifierProvider(create: (_ctx) => PublisherProvider()),
          ChangeNotifierProvider(create: (_ctx) => Filters()),
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
            '/createGame': (context) => GameCreator(),
            '/filter': (context) => Filter(),
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
