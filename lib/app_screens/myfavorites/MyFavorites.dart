import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/app_screens/main/Home.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/myfavorites/MyFavoritesWidget.dart';


class MyFavoritesPage extends StatelessWidget{
  //final int procedure;
  //MyFavoritesPage(this.procedure);

  @override
  Widget build(BuildContext context) {
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

class MyFavoritesPageBody extends StatefulWidget{
  @override
  _MyFavoritesPageBodyState createState() => _MyFavoritesPageBodyState();
}

class _MyFavoritesPageBodyState extends State<MyFavoritesPageBody>{
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
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // 컬럼 몇 개? (3줄)
          crossAxisCount: 2,
          // 가로와 세로의 비율? (2면 가로가 세로의 2배)
          childAspectRatio: 1.0,
          // 각 그리드 아이템 별 사이의 간격 main이 가로, cross가 세로
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0),
      // 아이템 몇 개?
      itemCount: 5,
      itemBuilder: (context, index) {
        return buildListItem(context, index);
      }
    );
    // return Center(
    //     child: CustomScrollView(
    //       primary: false,
    //       slivers: <Widget>[
    //         GridView.builder(
    //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //               // crossAxisCount: 2,
    //               // mainAxisSpacing: 30,
    //               // crossAxisSpacing: 30,
    //                 crossAxisCount: 3,
    //                 // 가로와 세로의 비율? (2면 가로가 세로의 2배)
    //                 childAspectRatio: 1.0,
    //                 // 각 그리드 아이템 별 사이의 간격 main이 가로, cross가 세로
    //                 mainAxisSpacing: 1.0,
    //                 crossAxisSpacing: 1.0
    //             ),
    //             itemBuilder: (context, index){
    //               return buildListItem(context, index);
    //             }
    //         ),
    //       ],
    //     )
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.create),
      ),
    );
  }

  Widget buildListItem(BuildContext context, int index) {
    return Image.network("https://placeimg.com/64/64/2", fit: BoxFit.cover);
  }

  // void _addMyFavor(FavoriteItem favorItem){
  //   setState((){
  //     _items.add(favorItem);
  //     _myFavoriteController.text = '';
  //   });
  // }
}
