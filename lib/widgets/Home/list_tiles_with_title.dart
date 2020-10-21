import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Home/game_tile.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/Home/home_title.dart';
import 'package:provider/provider.dart';


class ListTilesWithTitle extends StatelessWidget{
  final String title;
  final List<Game> list;
  final bool marginBottom;
  Game game;

  ListTilesWithTitle({
    @required this.title,
    @required this.list,
    this.marginBottom = true
  });

  @override 
  Widget build(BuildContext context) {
    return list.length == 0
    ? Column(
        children: [
          ProgressText(title: title),
          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.black12,
              child: Text(
                'There is no game in the list'
              )
            )
          ),
          ( marginBottom
            ? SizedBox(height: defaultPadding * 2)
            : Container()
          )
        ],
    )
    : Column(
      children: <Widget>[
        ProgressText(title: title),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              transparent_divider(),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: GameTile(game: list[index])
              // child: Container(
              //   child: Dismissible(
              //     // key: ObjectKey(game.id),
              //     key: ObjectKey(list[index].id),
              //     // child: _buildTileContent(),
              //     background: _buildSlideLeft(),
              //     secondaryBackground: _buildSlideRight(),
              //     onDismissed: (direction){
              //       if(direction == DismissDirection.startToEnd){
              //         print("Hi");
              //         Provider.of<Products>(context, listen: false).changeProgression(list[index], 100);
              //         Navigator.pushNamed(context, '/game/${list[index].id}');
              //         this.list.removeAt(index);
              //       }
              //       else if(direction == DismissDirection.endToStart){
              //         print("Hello");
              //         Provider.of<Products>(context, listen: false).changeProgression(list[index], 100);
              //         // Provider.of<Products>(context).deleteGame(list[index]);
              //       }
              //       // Provider.of<Products>(context).changeProgression(list[index], game.progression);
              //       // Provider.of<Products>(context).deleteGame(Provider.of<Products>(context).items[index]);
              //       // this.list.removeAt(index);
              //       this.list.removeAt(index) ?? Column(
              //             children: [
              //               ProgressText(title: title),
              //               Center(
              //                 child: Container(
              //                   padding: EdgeInsets.all(10),
              //                   color: Colors.black12, 
              //                   child: Text(
              //                     'There is no game in the list'
              //                   )
              //                 )
              //               ),
              //               ( marginBottom
              //                 ? SizedBox(height: defaultPadding * 2)
              //                 : Container()
              //               )
              //             ],
              //         );
              //     },
              //     child: GameTile(game: list[index]),
              //   )
              // )
            );
          }
        ),
      ],
    );
  }

  Widget _buildSlideLeft(){
    return Container(
      color: Colors.amber,
      alignment: Alignment(-0.9, 0.0),
      child: Icon(IconMoon.ipencil, color: Colors.white, size: 30.0,),
    );
  }

  Widget _buildSlideRight(){
    return Container(
      color: Colors.green,
      alignment: Alignment(0.9, 0.0),
      child: Icon(IconMoon.icheck2, color: Colors.white, size: 30.0,),
    );
  }
}