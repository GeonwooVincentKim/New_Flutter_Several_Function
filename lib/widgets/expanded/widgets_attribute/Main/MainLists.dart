import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/Details.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainWidgets.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class ProcessingList extends StatelessWidget{

  final Game game;

  ProcessingList({
    @required this.game
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: GestureDetector(
        onTap: (){
          Provider.of<Products>(context, listen: false).selectGame(game);
          Navigator.pushNamed(context, "/game/${game.id}");
        },
        child: Row(
          children: [
            ProcessingImage(game: game),
            Expanded(
                flex: 3,
                // For Below-part Widgets, the Main
                child: ProcessingText(game: game)
            )
          ],
        ),
      ),
    );
  }
}
