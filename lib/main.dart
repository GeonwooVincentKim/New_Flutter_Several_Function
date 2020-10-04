import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/discover/Discover.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavorites.dart';
import 'app_screens/main/Home.dart';

void main(){
  runApp(
    MaterialApp(
      title: "My Flutter App",
      home: Home(),
      onGenerateRoute: (RouteSettings settings){
        final List<String> pathElements = settings.name.split("/");
        if(pathElements[0] != '') return null;
        if(pathElements[1] == 'favorite'){
          return MaterialPageRoute(
            builder: (BuildContext context) => MyFavoritesPage(),
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
