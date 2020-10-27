import 'package:flutter/material.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/game_provider.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Discover/game_card.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:provider/provider.dart';

class Discover extends StatefulWidget{ State<StatefulWidget> createState() => _DiscoverState(); }

class _DiscoverState extends State<Discover>{
  List<Game> pageList = [];

  @override
  void initState(){
    final List<Game> listGame = Provider.of<GameProvider>(context, listen: false).gameItems;
    setState(() {
      pageList = listGame.toList();
    });
    super.initState();
  }

  Widget _buildDiscoverBody(){
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) =>
          transparent_divider(),
        itemCount: pageList.length,
        itemBuilder: (context, index){
          final item = pageList[index];
          return DiscoverGameCard(discoverGame: item);
        }
      )
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _buildDiscoverBody(),
      backgroundColor: backgroundColor,
    );
  }
}
