import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Discover/DiscoverWidget.dart';
import 'package:provider/provider.dart';


class DiscoverList extends StatelessWidget{
  final Game gameTitle;
  
  DiscoverList({
    @required this.gameTitle
  });

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
          Provider.of<Products>(context, listen: false).selectGame(gameTitle);
          // Navigator.push(
          //   context, MaterialPageRoute(builder: (context){return DetailPage();})
          // );
          Navigator.pushNamed(context, "/game/${gameTitle.id}");
        },
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: DiscoverUp(gameImage: gameTitle),
            ),
            Expanded(
              flex: 2,
              child: DiscoverDown(gameContents: gameTitle),
            ),
          ],
        ),
      )
    );
  }

}
