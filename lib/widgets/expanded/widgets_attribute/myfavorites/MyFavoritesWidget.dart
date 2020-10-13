import 'package:flutter/material.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/data/games.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';

class FavoriteImage extends StatelessWidget{
  final Game game;
  // final String image;

  Game selectedImage;
  String imageList;
  List<Game> inImageList = [];
  FavoriteImage({
    @required this.game
    // @required this.image
  });
  
  @override
  Widget build(BuildContext context) {
    final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
    // inImageList = listGame.where((game) => ).toList();
    return Container(
      child: Image.asset(
        game.images[1],
        fit: BoxFit.fitWidth
      ),
    );
  }
}

class FavoriteText extends StatelessWidget{
  final Game gameText;
  FavoriteText({
    @required this.gameText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
              gameText.title,
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "icomoon",
                fontSize: 8,
              )
          ),
        ],
      ),
    );
  }
}
