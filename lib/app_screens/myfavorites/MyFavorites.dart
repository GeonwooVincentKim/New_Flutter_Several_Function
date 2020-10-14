import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavoritesAttribute.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/ExampleCode/body_old_code/body_list.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoirtesAttribute.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';
import 'package:provider/provider.dart';


// class MyFavorites extends StatefulWidget {
//   @override
//   _MyFavoritesState createState() => _MyFavoritesState();
// }

// class _MyFavoritesState extends State<MyFavorites> {
//   List<Game> inWidgetList = [];

//   @override
//   void initState(){
//     final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
//     setState((){
//       inWidgetList = listGame.where((game) => game.isFavorite).toList();  
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black87,
//         title: Text("MY FAVORITES"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: MyFavoriteWidgetList(myfavoriteList: inWidgetList),
//       ),
//     );
//   }
// }

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
      // body: MyFavoritesPageBody(),
    );
  }
}
