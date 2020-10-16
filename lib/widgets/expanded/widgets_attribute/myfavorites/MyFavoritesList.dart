import 'package:flutter/material.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';
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
      child: Stack(
        children: [
          gameContents.isFavorite?
            FavoriteImage(game: gameContents) : Container(),
          gameContents.isFavorite?
            FavoriteText(gameText: gameContents) : Container(),
          // gameContents.isFavorite?
          //   Expanded(
          //     flex: 2,
          //     child: FavoriteImage(game: gameContents),
          //   ) : Container(),
          // gameContents.isFavorite?
          //   Expanded(
          //     flex: 1,
          //     child: FavoriteText(gameText: gameContents),
          //   ) : Container(),
        ],
      ),
    );
  }

  Widget _buildMyFavoritesImage(){

  }

  Widget _buildMyFavoritesText(){

  }
}