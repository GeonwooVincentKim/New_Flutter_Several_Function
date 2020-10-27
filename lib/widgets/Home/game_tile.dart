import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:provider/provider.dart';


class GameTile extends StatelessWidget {

  final Game game;
  GameTile({ @required this.game });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Provider.of<Products>(context, listen: false).selectGame(game);
          Navigator.pushNamed(context, "/game/${game.id}");
        },
        child: Container(
          child: game.progression != 100 ?
            Dismissible(
              key: ObjectKey(game.id),
              child: _buildTileContent(),
              background: _buildSlideLeft(),
              secondaryBackground: _buildSlideRight(),
              onDismissed: (direction){
                if(direction == DismissDirection.startToEnd){
                  Provider.of<Products>(context, listen: false).changeProgression(game, 50);
                  // Navigator.pushNamed(context, "/game/${game.id}");
                  print("HI");
                }
                else if (direction == DismissDirection.endToStart){
                  Provider.of<Products>(context, listen: false).changeProgression(game, 100);
                  print(game.progression);
                  print("Yeah"); 
                }
              },
            ) : Dismissible(
              key: ObjectKey(game.id),
              child: _buildTileContent(),
              background: _buildSlideLeft(),
              secondaryBackground: null,
              onDismissed: (direction){
                if(direction == DismissDirection.startToEnd){
                  Provider.of<Products>(context, listen: false).changeProgression(game, 50);
                  print("HI2");
                }
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
          width: 95,
          height: 97,
          child: ClipRRect(
            child: Image.asset(
              game.images[0],
              fit: BoxFit.fitWidth,
            )
          )
        ),
        _buildTileText()
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