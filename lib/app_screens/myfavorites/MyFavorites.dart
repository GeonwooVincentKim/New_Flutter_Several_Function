import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';
import 'package:provider/provider.dart';


class MyFavoritesPage extends StatelessWidget{
  // final Game gameMyFavorite;
  
  // MyFavoritesPage({
  //   @required this.gameMyFavorite
  // });
  //final int procedure;
  //MyFavoritesPage(this.procedure);

  
  @override
  Widget build(BuildContext context) {
    // List<Game> contentList =  Provider.of<Products>(context, listen: false).items;
    // final List<Game> favoriteList =;
    // contentList = favoriteList.toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("MY FAVORITES"),
        centerTitle: true,
      ),
      body: MyFavoritesPageBody(),
      // body: MyFavoritesPageBody(),
    );
  }
}

class MyFavoritesPageBody extends StatelessWidget{

  
  
  // final _items = <FavoriteItem>[];
  // final _formKey = GlobalKey<FormState>();
  // var _myFavoriteController = TextEditingController();
  //
  // @override
  // void Dispose(){
  //   _myFavoriteController.dispose();
  //   super.dispose();
  // }

  // Widget _buildItemWidget(FavoriteItem favorItem){
  //   return ListTile(
  //     title: Text(
  //       favorItem.title,
  //       // style: favorItem.isDone
  //       //     ? TextStyle(
  //       //   decoration: TextDecoration.lineThrough,
  //       //   fontStyle: FontStyle.italic,
  //       // ) : null,
  //     ),
  //     // trailing: IconButton(
  //     //   icon: Icon(Icons.delete_forever),
  //     //   onPressed: () => _deleteTodo(todo),
  //     // ),
  //   );
  // }

  Widget buildBody(){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 30.0),
          itemCount: 10,
          itemBuilder: (context, index) {
            return buildListItem(context, index);
          }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: buildBody(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.blueAccent,
      //   child: Icon(Icons.create),
      // ),
    );
  }

  Widget buildListItem(BuildContext context, int index) {
    
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
            child: FavoriteText(game: contentList),
          ),
        ],
      ),
    );
  }

  // void _addMyFavor(FavoriteItem favorItem){
  //   setState((){
  //     _items.add(favorItem);
  //     _myFavoriteController.text = '';
  //   });
  // }
}
