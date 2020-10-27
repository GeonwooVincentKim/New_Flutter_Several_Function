import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/game_provider.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/gradient_box.dart';
import 'package:provider/provider.dart';


class DiscoverGameCard extends StatelessWidget{
  final Game discoverGame;
  DiscoverGameCard({
    @required this.discoverGame
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        // Provider.of<Products>(context, listen: false).selectGame(discoverGame);
        Provider.of<GameProvider>(context, listen: false).selectGame(discoverGame);
        Navigator.pushNamed(context, "/game/${discoverGame.id}");
      },
      child: Card(
        margin: EdgeInsets.only(bottom: defaultPadding),
        color: backgroundColor,
        child: Stack(
          children: [
            _buildGameImage(),
            _buildCardText(),
          ],
        ),
      ),
    );
  }

  Widget _buildGameImage() {
    return Container(
      width: 372,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: 350,
          child: Image.asset(
            discoverGame.images[0],
            fit: BoxFit.fill,
          )
        ),
      ),
    );
  }

  Widget _buildCardText() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: GradientBox(
        hasBorderRadius: true,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0) 
        ),
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              discoverGame.title.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
            ),
            Text(
              "Platform: " + discoverGame.platforms[0] + " | " +  "Genre: " + discoverGame.genres[0],
              style: TextStyle(color: Colors.white)
            )
          ]
        ),
      )
    );
  }
}