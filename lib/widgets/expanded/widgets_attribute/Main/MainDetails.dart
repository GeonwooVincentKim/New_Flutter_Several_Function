import 'package:flutter/material.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/data/games.dart';
import 'package:provider/provider.dart';

import 'package:flutter_app/model/game/game.dart';

// ignore: camel_case_types
class WidgetTextAlign extends StatelessWidget{

  final Game game;

  WidgetTextAlign({
    @required this.game
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            game.title,
            textScaleFactor: 2,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "icomoon",
              fontSize: 12,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            game.platforms[0],
            // "Platform: PS4 | Genre : RPG",
            style: TextStyle(
              color: Colors.black26,
              fontFamily: "icomoon",
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "Progression: 50%",
            style: TextStyle(
              color: Colors.black26,
              fontFamily: "icomoon",
            ),
          ),
        ),
      ],
    );
  }
}

const widgetTextStyle = TextStyle(
  decoration: TextDecoration.none,
  fontSize: 25.0,
  fontFamily: "icomoon",
  fontWeight: FontWeight.w700,
  color: Colors.black87
);
