import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/provider.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/DetailsPage/favorites_card.dart';
import 'package:provider/provider.dart';


class Favorites extends StatelessWidget{
  List<Game> inWidget = [];

  Widget _buildFavoritesAppBar(){
    return AppBar(
      backgroundColor: Colors.black87,
      title: Text("MY FAVORITES"),
      centerTitle: true,
    );
  }

  Widget _buildFavoritesBody(){
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: inWidget.length == 0 ?
        Center(
          child: Container(
            padding: EdgeInsets.all(defaultPadding / 2),
            color: Colors.black12,
            child: Text('There is no your Favorite-Games in your List.')
          )
        ) :
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            mainAxisSpacing: 30.0,
            crossAxisSpacing: 30.0),
          itemCount: inWidget.length,
          itemBuilder: (context, index) {
            final item = inWidget[index]; 
            return FavoritesGameList(gameList: item);
          }
        )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    final List<Game> listGame = Provider.of<GameProvider>(context, listen: false).gameItems;
    inWidget = listGame.where((game) => game.isFavorite).toList();

    return Scaffold(
      appBar: _buildFavoritesAppBar(),
      body: _buildFavoritesBody(),
    );
  }

}