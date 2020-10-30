import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/Home/SideMenu.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/games_provider.dart';
// import 'package:flutter_app/provider/games.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:provider/provider.dart';


class GameCreator extends StatefulWidget {
  @override
  _GameCreatorState createState() => _GameCreatorState();
}

class _GameCreatorState extends State<GameCreator> {
  final _formCreateGame = GlobalKey<FormState>();
  final Map<String, dynamic> _formGameData = {
    'title': '',
    'images': [],
    'platforms': [],
    'genres': [],
    'publisher': [],
    'description': '',
    'releaseDate': '',
    'isFavorite': false,
    'progression': 0.0,
    // 'videoURL': ''
  };
  
  @override
  void initState(){
    final Game gameSelect = Provider.of<GameProvider>(context, listen: false).selectedGame;
    if(gameSelect != null /* && gameSelect.createUser == userID */){
      print("Intializing..");
      _formGameData['title'] = gameSelect.title;
      _formGameData['images'] = gameSelect.images;
      _formGameData['platforms'] = gameSelect.platforms;
      _formGameData['genres'] = gameSelect.genres;
      _formGameData['publisher'] = gameSelect.publisher;
      _formGameData['releaseDate'] = gameSelect.releaseDate;
      _formGameData['isFavorite'] = gameSelect.isFavorite;
      _formGameData['progression'] = gameSelect.progression;
    }
    super.initState();
  }

  AppBar _buildAppBarCreator(){
    return AppBar(
      title: Text("Create Game"),
      backgroundColor: appBarColor,
      centerTitle: true,
    );
  }

  Widget _buildCreatorBody(){
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      color: backgroundColor,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: SingleChildScrollView(
              // child: Text("Hello World"),
              // child: GameCreatorForm(),
              
            )
          )
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: _buildAppBarCreator(),
      body: _buildCreatorBody(),
    );
  }
}