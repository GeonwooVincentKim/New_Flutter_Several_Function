import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavoritesAttribute.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/ExampleCode/body_old_code/body_list.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoirtesAttribute.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';
import 'package:provider/provider.dart';


class MyFavorites extends StatefulWidget {
  @override
  _MyFavoritesState createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  List<Game> inWidgetList = [];

  @override
  void initState(){
    final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
    setState((){
      inWidgetList = listGame.where((game) => game.isFavorite).toList();  
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("MY FAVORITES"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: MyFavoriteWidgetList(myfavoriteList: inWidgetList),
      ),
    );
  }
}

// class MyFavoritesPage extends StatelessWidget{
//   // MyFavoritesPage({
//   //   @required this.myFavoritePage
//   // });
//   @override
//   Widget build(BuildContext context) {
//     // final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
//     // inWidgetList = listGame.where((game) => game.isFavorite).toList();
//     // selectedGame = Provider.of<Products>(context, listen: false).selectedGame;
//     // myFavoritePage = listGame.toList();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black87,
//         title: Text("MY FAVORITES"),
//         centerTitle: true,
//       ),
//       // body: MyFavoritesPageBody(inWidgetList: widgetList),
//       // body: MyFavoritesPageBody(gameTitle: myFavoritePage),
//       body: MyFavoritesPageBody(),
//     );
//   }
// }

// class MyFavoritesPageBody extends StatelessWidget{
//   List<Game> inWidgetList = [];
//   Game selectedGame;
//   // final Game gameTitle;
//   // final List<Game> gameTitle;
//   // MyFavoritesPageBody({
//   //   @required this.gameTitle
//   // });

//   @override
//   Widget build(BuildContext context) {
//     final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
//     inWidgetList = listGame.where((game) => game.isFavorite).toList();
//     // selectedGame = Provider.of<Products>(context, listen: false).selectedGame;
    

//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: GridView.builder(
//           shrinkWrap: true,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 1.0,
//               mainAxisSpacing: 30.0,
//               crossAxisSpacing: 30.0),
//           itemCount: inWidgetList.length,
//           itemBuilder: (context, index) {
//             final item = inWidgetList[index];
//             // return MyFavoritesLists(favoriteList: item);
//             return GestureDetector(
//               onTap: (){
//                 // Provider.of<Products>(context, listen: false).selectGame(favoriteList);
//                 Navigator.pushNamed(context, '/game/${item.id}');
//                 // item.isFavorite?
//                 //   Navigator.pushNamed(context, '/game/${item.id}') :  Container();
//               },
//               child: Column(
//                 children: [
//                   item.isFavorite?
//                     Expanded(
//                       flex: 2,
//                       child: FavoriteImage(game: inWidgetList),
//                     ) : Container(),
//                   item.isFavorite?
//                     Expanded(
//                       flex: 1,
//                       child: FavoriteText(gameText: item),
//                     ) : Container(),
//                 ],
//               ),
//             );
//           }
//         )
//       ),
//     );
//   }
// }
