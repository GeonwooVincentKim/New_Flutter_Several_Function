import 'package:flutter/material.dart';
import 'package:flutter_app/data/Provide.dart';
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
        // item.isFavorite?
        //   Navigator.pushNamed(context, '/game/${item.id}') :  Container();
      },
      child: Column(
        children: [
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
          Expanded(
            flex: 2,
            child: FavoriteImage(game: gameContents),
          ),
          Expanded(
            flex: 1,
            child: FavoriteText(gameText: gameContents),
          ),
        ],
      ),
    );
  }
}