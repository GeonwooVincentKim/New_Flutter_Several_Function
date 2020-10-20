import 'package:flutter/material.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/widgets/Home/list_tiles_with_title.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';


// Main Scene that shows Body part separately.
class Home extends StatefulWidget{
  final void Function(int) onBottomTapped;
  // final int pageIndex;

  // const Body({Key key, this.pageIndex=0}) : super(key: key);
  const Home({Key key, this.onBottomTapped}) : super(key: key);

  @override
  State<StatefulWidget> createState()
  => _BodyState();
}

class _BodyState extends State<Home>{
  int pageIndex = 0;
  Function onBottomTapped;
  
  List<Game> inProgressList = [], completedList = [];
  List<String> titleList = <String>['IN PROCESS', 'Completed'];
  Game deletedGame;

  @override
  void initState() {
    // TODO: implement initState
    // final List<Game> listGame = Provider.of<Products>(context, listen: false).userList;
      
    // setState(() {
    //   inProgressList = listGame.where((game) => game.progression < 100).toList();
    //   completedList = listGame.where((game) => game.progression == 100).toList();
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // final List<Game> listGame = Provider.of<Products>(context).userList;
      
    // setState(() {
    //   inProgressList = listGame.where((game) => game.progression < 100).toList();
    //   completedList = listGame.where((game) => game.progression == 100).toList();
    // });

    return Container(
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Consumer<Products>(
            builder: (ctx, product, child) {
              final List<Game> listGame = product.userList;

              inProgressList = listGame.where((game) => game.progression < 100).toList();
              completedList = listGame.where((game) => game.progression == 100).toList();
              
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){
                      Provider.of<Products>(context).deleteGame(Provider.of<Products>(context).items[0]);
                    },
                    // child: Text('delete'),
                    ),
                    ListTilesWithTitle(
                      title: titleList[0],
                      list: inProgressList
                    ),
                    transparent_divider(),
                    ListTilesWithTitle(
                      title: titleList[1],
                      list: completedList,
                    ),
                  ],
                );
            }
          )
        ),
      );
  }
}