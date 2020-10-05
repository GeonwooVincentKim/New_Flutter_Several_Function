import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/main/main_attributes/BodyAttributes.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainWidgets.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';

// Main Scene that shows Body part separately.
class Body extends StatefulWidget{
  final void Function(int) onAddButtonTapped;
  const Body({Key key, this.onAddButtonTapped}) : super(key: key);

  @override
  State<StatefulWidget> createState()
  => _BodyState();
}

class _BodyState extends State<Body>{

  List<Game> inProgressList, completedList;

  @override
  void initState() {
    // TODO: implement initState
    print('initState home');

    List<Game> listGame = Provider.of<Products>(context).items.toList();
    inProgressList = listGame.where((game) => game.progression < 100).toList();
    completedList = listGame.where((game) => game.progression == 100).toList();

    print(listGame.length);
    print(inProgressList.length);
    print(completedList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ...listUp.map((item) {
              //
              // }).toList(),
              Row(
                children: <Widget>[
                  // Import expanded_widgets class.
                  ProgressText(),
                ],
              ),
              CustomDivider(color: Colors.black87),
              // Import buttons that combined Image and Text.
              // For the codes that belows 'IN PROGRESS'.
              Row(
                children: <Widget>[
                  // HomeWidgetsList(list: inProgressList)
                ]
              ),

              transparent_divider(),

              Row(
                children: <Widget>[
                  // Import expanded_widgets_down class.
                  CompletedText(),
                ],
              ),
              CustomDivider(color: Colors.black87),

              // For the codes that belows 'COMPILED'.
              Row(
                children: <Widget>[
                  // HomeWidgetsList(list: completedList),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}