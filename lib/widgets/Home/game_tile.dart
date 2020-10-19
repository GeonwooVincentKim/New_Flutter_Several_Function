import 'package:flutter/material.dart';
import 'package:flutter_app/data/games.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/shared/helpers/functions.dart';
import 'package:flutter_app/shared/style.dart';


class GameTile extends StatelessWidget {

  final Game game;

  GameTile({
    @required this.game
  });

  // dummy data
  final dummyGenre = DUMMY_GENRES.toList();
  final dummyPlatform = DUMMY_PLATFORMS.toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding / 2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () => {
            Navigator.pushNamed(context, '/game/${game.id}')
          },
          child: Container(
            decoration: BoxDecoration(color: boxBackgroundColor),
            child: Dismissible(
              key: ObjectKey(game.id),
              child: _buildTileContent(),
              background: _buildSlideLeft(),
              secondaryBackground: _buildSlidRight(),
            ),
          ),
        ),
      )
    );
  }

  Widget _buildSlidRight() {
    return Container(
      color: Color(0xff12ab1b),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(right: 40),
          child: Icon(
            Icons.done,
            color: Colors.white
          ),
        )
      )
    );
  }

  Widget _buildSlideLeft() {
    return Container(
      color: Color(0xffe96f25),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 40),
          child: Icon(
            Icons.edit,
            color: Colors.white
          ),
        )
      )
    );
  }

  Widget _buildTileContent() {
    return Row(
      children: <Widget>[
        Container(
          height: 135,
          width: 90,
          child: Image.asset(
            game.images[0],
            fit: BoxFit.fill,
          ),
        ),
        _buildTileText()
      ],
    );
  }


  Widget _buildTileText() {
    final listGenre = getNameInList(dummyGenre, game.genres);
    final listPlatform = getNameInList(dummyPlatform, game.platforms);


    return Flexible(
      child: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              game.title.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: defaultPadding / 2),
            Text(
              "Platform : $listPlatform",
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: defaultPadding / 4),
            Text(
              "Genre: $listGenre",
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: defaultPadding / 4),
            Text(
              "Progression: ${game.progression} %",
              style: TextStyle(color: linkColor),
            )
          ],
        )
      )
    );
  }
}