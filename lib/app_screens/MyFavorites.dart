import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/provider/game_provider.dart';
import 'package:flutter_app/shared/layout.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Details/favorites_card.dart';
import 'package:provider/provider.dart';


// ignore: must_be_immutable
class MyFavoritesPage extends StatelessWidget{
  List<Game> inWidgetList = [];

  Widget _buildMyFavoritesAppBar(){
    return AppBar(
      backgroundColor: Colors.black87,
      title: Text("MY FAVORITES"),
      centerTitle: true,
    );
  }

  Widget _buildMyFavoritesBody(){
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: inWidgetList.length == 0
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
        itemCount: inWidgetList.length,
        itemBuilder: (context, index) {
          final item = inWidgetList[index];
          return FavoritesGameCard(card: item);
        }
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
    final List<Game> listGame = Provider.of<GameProvider>(context, listen: false).gameItems;
    inWidgetList = listGame.where((game) => game.isFavorite).toList();
    
    return Scaffold(
      appBar: _buildMyFavoritesAppBar(),
      body: _buildMyFavoritesBody(),
    );
  }
}
