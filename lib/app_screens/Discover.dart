import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/discover/DiscoverAttributes.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';

class Discover extends StatefulWidget{
  // final void Function(int) onAddButtonTapped;
  // const Discover({Key key, this.onAddButtonTapped}) : super(key: key);

  // @overide
  State<StatefulWidget> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover>{
  List<Game> pageList = [];

  @override
  void initState(){
    final List<Game> listGame = Provider.of<Products>(context, listen: false).items;
    setState(() {
      pageList = listGame.toList();
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        color: Colors.black12,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // DiscoverWidgetsList(list: pageList),
              Expanded(
                child: DiscoverWidgetsList(discoverList: pageList),
              )
            ]
        ),
      ),
    );
  }
}
