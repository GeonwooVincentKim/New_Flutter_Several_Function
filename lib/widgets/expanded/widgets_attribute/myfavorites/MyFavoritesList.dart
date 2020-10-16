import 'package:flutter/material.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';

class MyFavoriteList extends StatelessWidget{
  final Game gameContents;
  MyFavoriteList({
    @required this.gameContents
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<Products>(context, listen: false).selectGame(gameContents);
        Navigator.pushNamed(context, '/game/${gameContents.id}');
      },
      child: Column(
        children: [
          // gameContents.isFavorite?
          //   FavoriteImage(game: gameContents) : Container(),
          // gameContents.isFavorite?
          //   FavoriteText(gameText: gameContents) : Container(),
          gameContents.isFavorite?
            Expanded(
              flex: 2,
              child: _buildMyFavoritesImage(),
              // child: FavoriteImage(game: gameContents),
            ) : Container(),
          gameContents.isFavorite?
            Expanded(
              flex: 1,
              child: _buildMyFavoritesText(context),
              // child: FavoriteText(gameText: gameContents),
            ) : Container(),
        ],
      ),
    );
  }

  Widget _buildMyFavoritesImage(){
    return Container(
      // width: 100,
      child: Image.asset(
        gameContents.images[1],
        fit: BoxFit.fill
      ),
    );
  }

  Widget _buildMyFavoritesText(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
              gameContents.title,
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