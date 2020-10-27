import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/users.dart';
import 'package:flutter_app/app_screens/Details.dart';
import 'package:flutter_app/app_screens/Discover.dart';
import 'package:flutter_app/app_screens/MyFavorites.dart';
import 'package:flutter_app/app_screens/attributes/ModifyProfile.dart';
import 'package:flutter_app/app_screens/settings.dart';
import 'package:flutter_app/data/ProductStore.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:provider/provider.dart';
import 'app_screens/PageSlider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // Show Current Products
          ChangeNotifierProvider(create: (_ctx) => Products()),
          ChangeNotifierProvider(create: (_ctx) => UserProvider()),
          // Add into your Cart
          ChangeNotifierProvider(create: (_ctx) => Cart()),
        ],
        child: MaterialApp(
          title: "My Flutter App",
          initialRoute: '/',
          routes: {
            '/': (context) => PageSlider(),
            '/discover': (context) => Discover(),
            '/favorite': (context) => MyFavoritesPage(),
            '/settings': (context) => Setting(),
            '/modify': (context) => ModifyProfile(),
            '/details': (context) => DetailPage(),
            // '/favorite': (context) => MyFavorites()
          },
          onGenerateRoute: (RouteSettings settings){
            final List<String> pathElements = settings.name.split("/");
            if(pathElements[0] != '') return null;
            if(pathElements[1] == 'game'){
              String gameId = pathElements[2];

              return MaterialPageRoute(
                builder: (BuildContext context) => DetailPage(gameID: gameId),
              );
            }
            return null;
          },
          onUnknownRoute: (RouteSettings settings){
            print(settings);
            return MaterialPageRoute(
              builder: (BuildContext context) => PageSlider(),
            );
          },
        ),
    );
  }
}

