import 'package:flutter/material.dart';
import 'package:flutter_app/provider/game_provider.dart';
import 'package:flutter_app/widgets/Home/list_tiles_with_title.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';


class Home extends StatefulWidget{
  final void Function(int) onBottomTapped;
  const Home({Key key, this.onBottomTapped}) : super(key: key);

  @override
  State<StatefulWidget> createState()
  => _BodyState();
}

class _BodyState extends State<Home>{
  int pageIndex = 0;
  Function onBottomTapped;
  
  List<Game> inProgress = [], completed = [];
  List<String> titleList = <String>['IN PROCESS', 'Completed'];
  Game deletedGame;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.black12,
      child: SingleChildScrollView(
        child: Consumer<GameProvider>(
          builder: (ctx, product, child){
            final List<Game> listGame = product.userItems;
            inProgress = listGame.where((game) => game.progression < 100).toList();
            completed = listGame.where((game) => game.progression == 100).toList();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTilesWithTitle(title: titleList[0], gameList: inProgress),
                transparent_divider(),
                ListTilesWithTitle(title: titleList[1], gameList: completed),
              ],
            );
          }
        )
      ),
    );
  }
}