import 'package:flutter/material.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';
import 'package:provider/provider.dart';


class MyFavoritesPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("MY FAVORITES"),
        centerTitle: true,
      ),
      // body: MyFavoritesPageBody(inWidgetList: widgetList),
      body: MyFavoritesPageBody(),
    );
  }
}

class MyFavoritesPageBody extends StatelessWidget{
  List<Game> inWidgetList = [];
  Game selectedGame;

  @override
  Widget build(BuildContext context) {
    final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
    inWidgetList = listGame.where((game) => game.isFavorite).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 30.0),
          itemCount: inWidgetList.length,
          itemBuilder: (context, index) {
            final item = inWidgetList[index];
            return GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/game/${item.id}');
                // item.isFavorite?
                //   Navigator.pushNamed(context, '/game/${item.id}') :  Container();
              },
              child: Column(
                children: [
                  item.isFavorite?
                    Expanded(
                      flex: 2,
                      child: FavoriteImage(game: item),
                    ) : Container(),
                  item.isFavorite?
                    Expanded(
                      flex: 1,
                      child: FavoriteText(game: item),
                    ) : Container(),
                ],
              ),
            );
          }
        )
      ),
    );
  }
}
