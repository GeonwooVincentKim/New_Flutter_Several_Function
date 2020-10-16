import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';


class ListTilesWithTtile extends StatelessWidget{
  final String title;
  final List<Game> listGamesTitle;
  final bool marginBottom;

  ListTilesWithTtile({
    @required this.title,
    @required this.listGamesTitle,
    this.marginBottom = true
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // HomeTitle(title: title),
        
      ]
    );
  }

}