import 'package:flutter/material.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainLists.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';


class HomeWidgetsList extends StatelessWidget{
  final List<Game> list;
  List<Game> inProgressList = [], completedList =[];

  HomeWidgetsList({
    @required this.list
  });

  @override
  Widget build(BuildContext context){
    final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
    inProgressList = listGame.where((game) => game.progression < 100).toList();
    completedList = listGame.where((game) => game.progression == 100).toList();
    
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) =>
          transparent_divider(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            // height: 67,
            // height: MediaQuery.of(context).size.height * 0.12,
            child: Dismissible(
              key: Key(item.id),
              onDismissed: (direction) {
                // setState(() {
                //   listUp.removeAt(index);
                // });
                Scaffold.of(context).showSnackBar(
                    SnackBar(content:
                    Text("$item dismissed")
                    )
                );
              },
              background: Container(
                color: Colors.amber,
                alignment: Alignment(-0.9, 0.0),
                child: Icon(IconMoon.ipencil, color: Colors.white, size: 30.0,),
              ),
              secondaryBackground: Container(
                color: Colors.green,
                alignment: Alignment(0.9, 0.0),
                child: Icon(IconMoon.icheck2, color: Colors.white, size: 30.0,),
              ),
              child: ProcessingList(game: item)
            ),
          ),
        );
      },
    );
  }
}