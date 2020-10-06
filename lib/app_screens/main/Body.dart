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
  List<Game> inProgressList = [], completedList =[];
  List<String> titleList = <String>['IN PROCESS', 'Completed'];

  int i =0;
  @override
  void initState() {
    // TODO: implement initState
    final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
    setState(() {
      inProgressList = listGame.where((game) => game.progression < 100).toList();
      completedList = listGame.where((game) => game.progression == 100).toList();
      // inProgressListText = "IN PROGRE"
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: MediaQuery.of(context).size.height,
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
              ProgressText(title: titleList[0]),
              CustomDivider(color: Colors.black87),
              // Import buttons that combined Image and Text.
              // For the codes that belows 'IN PROGRESS'.
              HomeWidgetsList(list: inProgressList),
              transparent_divider(),
              
              ProgressText(title: titleList[1]),
              CustomDivider(color: Colors.black87),

              // For the codes that belows 'COMPILED'.
              HomeWidgetsList(list: completedList),
            ],
          ),
        ),
      ),
    );
  }
}