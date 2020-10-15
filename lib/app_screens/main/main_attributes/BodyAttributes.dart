import 'package:flutter/material.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainLists.dart';
import 'package:flutter_app/model/game/game.dart';


class HomeWidgetsList extends StatelessWidget{
  final List<Game> list;
  Game selectedGame;
  
  HomeWidgetsList({
    @required this.list
  });

  @override
  Widget build(BuildContext context){
    
    return list.length == 0
    ? Center(
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black12,
        child: Text(
          'There is no game in the list'
        )
      )
    )
    : ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) =>
          transparent_divider(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        // return BodyList(bodyList: item);
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
                // });'
                // Provider.of<Products>(context).deleteProduct(index);
                // if(direction == DismissDirection.startToEnd){
                //   setState((){

                //   });
                // }
                list.removeAt(index);
                // print(index);
                
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