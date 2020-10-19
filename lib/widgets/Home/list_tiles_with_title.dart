import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Home/game_tile.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainWidgets.dart';


class ListTilesWithTitle extends StatelessWidget{
  final String title;
  final List<Game> listGamesTitle;
  final bool marginBottom;

  ListTilesWithTitle({
    @required this.title,
    @required this.listGamesTitle,
    this.marginBottom = true
  });

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProgressText(title: title),
        CustomDivider(color: Colors.black87),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: listGamesTitle.length,
          itemBuilder: (context, index) => GameTile(game: listGamesTitle[index])
        ),
        ( marginBottom
            ? SizedBox(height: defaultPadding * 2)
            : Container()
        )
      ]
    );
  }

}