import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesList.dart';


class MyFavoriteWidgetList extends StatelessWidget{
  final List<Game> myfavoriteList;
  MyFavoriteWidgetList({
    @required this.myfavoriteList
  });
  
  @override
  Widget build(BuildContext context) {
    return myfavoriteList.length == 0
    ? Center(
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black12,
        child: Text(
          'There is no favorite-game in your list'
        )
      ),
    )
    : GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          mainAxisSpacing: 30.0,
          crossAxisSpacing: 30.0),
      itemCount: myfavoriteList.length,
      itemBuilder: (context, index) {
        final item = myfavoriteList[index];
        // return MyFavoritesLists(favoriteList: item);
        return MyFavoriteList(gameContents: item);
      }
    );
  }
}