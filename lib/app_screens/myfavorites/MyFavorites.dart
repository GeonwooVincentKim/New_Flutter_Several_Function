import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavoirtesAttribute.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:provider/provider.dart';


// ignore: must_be_immutable
class MyFavoritesPage extends StatelessWidget{
  List<Game> inWidgetList = [];
  @override
  Widget build(BuildContext context) {
    final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
    inWidgetList = listGame.where((game) => game.isFavorite).toList();
    // selectedGame = Provider.of<Products>(context, listen: false).selectedGame;
    // myFavoritePage = listGame.toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("MY FAVORITES"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: MyFavoriteWidgetList(myfavoriteList: inWidgetList),
      )
    );
  }
}
