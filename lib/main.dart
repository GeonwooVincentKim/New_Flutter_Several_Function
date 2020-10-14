import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/app_screens/discover/Discover.dart';
// import 'package:flutter_app/app_screens/discover/Discover.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavorites.dart';
import 'package:flutter_app/data/ProductStore.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';
import 'app_screens/main/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // Show Current Products
          ChangeNotifierProvider(create: (_ctx) => Products()),
          // Add into your Cart
          ChangeNotifierProvider(create: (_ctx) => Cart()),
        ],
        child: MaterialApp(
          title: "My Flutter App",
          initialRoute: '/',
          routes: {
            '/': (context) => Home(),
            '/discover': (context) => Discover(),
            '/favorite': (context) => MyFavoritesPage()
            // '/favorite': (context) => MyFavorites()
          },
          onGenerateRoute: (RouteSettings settings){
            final List<String> pathElements = settings.name.split("/");
            if(pathElements[0] != '') return null;
            if(pathElements[1] == 'game'){
              String gameId = pathElements[2];

              return MaterialPageRoute(
                builder: (BuildContext context) => DetailPage(gameId: gameId),
              );
            }
            return null;
          },
          onUnknownRoute: (RouteSettings settings){
            print(settings);
            return MaterialPageRoute(
              builder: (BuildContext context) => Home(),
            );
          },
        ),
    );
  }
}

