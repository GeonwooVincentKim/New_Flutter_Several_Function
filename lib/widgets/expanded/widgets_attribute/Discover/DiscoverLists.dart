import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Discover/DiscoverWidget.dart';


class DiscoverList extends StatelessWidget{
  // final Game game;
  
  // DiscoverList({
  //   @required this.game
  // });

  @override
  Widget build(BuildContext context) {
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
              // child: DiscoverDown(game: game),
            ),
          ],
        ),
      )
    );
  }

}