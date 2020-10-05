import 'package:flutter/material.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainLists.dart';
import 'package:flutter_app/model/game/game.dart';


class HomeWidgetsList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var Lists = ["Title1", "Title2", "Title3", "Title4", "Title5", "Title6", "Title7"];
    return Expanded(
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) =>
              transparent_divider(),
          itemCount: Lists.length,
          itemBuilder: (context, index) {
            final item = Lists[index];
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 67,
                child: Dismissible(
                    key: Key(item),
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

                    child: ProcessingList()
                ),
              ),

            );
          }
      ),
    );
  }
}