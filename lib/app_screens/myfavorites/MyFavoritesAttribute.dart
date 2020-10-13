import 'package:flutter/material.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/ExampleCode/body_old_code/body_list.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';
import 'package:provider/provider.dart';

class MyFavoritesLists extends StatelessWidget{
  final Game favoriteList;

  MyFavoritesLists({
    @required this.favoriteList
  });
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<Products>(context, listen: false).selectGame(favoriteList);
        Navigator.pushNamed(context, '/game/${favoriteList.id}');
        // item.isFavorite?
        //   Navigator.pushNamed(context, '/game/${item.id}') :  Container();
      },
      child: Column(
        children: [
          favoriteList.isFavorite?
            Expanded(
              flex: 2,
              child: FavoriteImage(game: favoriteList),
            ) : Container(),
          favoriteList.isFavorite?
            Expanded(
              flex: 1,
              child: FavoriteText(gameText: favoriteList),
            ) : Container(),
        ],
      ),
    );
  }
  
}