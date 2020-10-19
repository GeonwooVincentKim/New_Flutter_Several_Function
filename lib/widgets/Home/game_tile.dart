import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:provider/provider.dart';


class GameTile extends StatelessWidget {

  final Game game;

  GameTile({
    @required this.game
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: defaultPadding / 2),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      // ),
      child: GestureDetector(
        onTap: (){
          Provider.of<Products>(context, listen: false).selectGame(game);
          Navigator.pushNamed(context, "/game/${game.id}");
        },
        // child: Row(
        //   children: [
        //     ProcessingImage(game: game),
        //     Expanded(
        //         flex: 3,
        //         // For Below-part Widgets, the Main
        //         child: ProcessingText(game: game)
        //     )
        //   ],
        // ),
        child: Container(
          // decoration: BoxDecoration(color: boxBackgroundColor),
          child: Dismissible(
            key: ObjectKey(game.id),
            child: _buildTileContent(),
            background: _buildSlideLeft(),
            secondaryBackground: _buildSlideRight(),
            onDismissed: (direction){
              
            },
          )
        ),
      ),
    );
  }

  Widget _buildTileContent(){
    return Row(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width / 5,
          width: 85,
          height: 97,
          child: ClipRRect(
            child: Image.asset(
              game.images[0],
              fit: BoxFit.fitWidth,
            )
          )
        ),
        _buildTileText()
        // Expanded(
        //     flex: 3,
        //     // For Below-part Widgets, the Main
        //     child: _buildTileText(),
        //     // child: ProcessingText(game: game)
        // )
      ],
    );
  }

  Widget _buildSlideLeft(){
    return Container(
      color: Colors.amber,
      alignment: Alignment(-0.9, 0.0),
      child: Icon(IconMoon.ipencil, color: Colors.white, size: 30.0,),
    );
  }

  Widget _buildSlideRight(){
    return Container(
      color: Colors.green,
      alignment: Alignment(0.9, 0.0),
      child: Icon(IconMoon.icheck2, color: Colors.white, size: 30.0,),
    );
  }

  Widget _buildTileText(){
    return Flexible(
      child: Container(
        width: 290,
        height: 97,
        decoration: BoxDecoration(
          color: Colors.black12
        ),
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Text(
              game.title.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              style: contextFont,
            ),SizedBox(height: defaultPadding / 2),
            Text(
              "Platform: " + game.platforms[0],
              style: subcontextFont,
            ),
            Text(
              "Progrerssion: ${game.progression} %",
              style: subcontextFont,
            )
          ],
        )
      )
    );
  }
}