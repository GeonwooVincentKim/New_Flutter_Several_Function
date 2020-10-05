import 'package:flutter/material.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:provider/provider.dart';

import 'package:flutter_app/model/game/game.dart';

import 'MainWidgets.dart';

// ignore: camel_case_types
class ProcessingList extends StatelessWidget{

  // final List<Game> listGame;
  //
  // ProcessingList({
  //   @required this.listGame
  // });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              // For Top-part Widgets, the Main
              child: ProcessingImage()
          ),

          Expanded(
              flex: 3,
              // For Below-part Widgets, the Main
              // child: ListView.builder(
              //   itemCount: productList.items.length,
              //   itemBuilder: (context, index){
              //     return ProcessingText(game: productList.items[index]);
              //     // return ListTile(
              //     //   title: Text(productList.items[index].title),
              //     //
              //     // );
              //   }
              // ),
              child: ProcessingText()
          )
        ],
      ),
    );
  }

}


// ignore: camel_case_types
class ProceededList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              // For Top-part Widgets, the Main
              child: ProceededImage()
          ),

          Expanded(
              flex: 3,
              // For Below-part Widgets, the Main
              child: ProceededText()
          )
        ],
      ),
    );
  }
}