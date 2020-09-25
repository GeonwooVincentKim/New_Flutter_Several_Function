import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/discover/Discover.dart';
import 'app_screens/main/Home.dart';

void main(){
  runApp(
      MaterialApp(
        title: "My Flutter App",
        home: Home(),
        routes: {
          '/home': (context) => Home(),
          '/discover': (context) => DiscoverPage(),
        },
      ),
  );
}
