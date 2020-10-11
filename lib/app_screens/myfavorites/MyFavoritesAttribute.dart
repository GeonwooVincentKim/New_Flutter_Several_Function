import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';

class MyFavoritesList extends StatelessWidget{
  final List<Game> myFavoriteList;

  MyFavoritesList({
    @required this.myFavoriteList
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context){
                  return DetailPage();
                }
            )
        );
      },
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: FavoriteImage()
          ),
          Expanded(
            flex: 1,
            child: FavoriteText(game: myFavoriteList),
          ),
        ],
      ),
    );
  }
}