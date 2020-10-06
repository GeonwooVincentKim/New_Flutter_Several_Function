import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/app_screens/discover/Discover.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Discover/DiscoverWidget.dart';

class DiscoverWidgetsList extends StatelessWidget{
  final List<Game> list;

  DiscoverWidgetsList({
    @required this.list
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) =>
          transparent_divider(),
      itemCount: list.length,
      itemBuilder: (context, index){
        return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        // It just going to show only one-Image if I convert this code as
        // height = MediaQuery.of(context).size.height
        height: 220,
        child: GestureDetector(
          onTap: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context){return DetailPage();})
            );
          },
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: DiscoverUp(),
              ),
              Expanded(
                flex: 1,
                child: DiscoverDown(),
              ),
            ],
          ),
        )

    );
      }
      // itemBuilder: (context, index) => DiscoverBodyDetails()
    );
  }
}