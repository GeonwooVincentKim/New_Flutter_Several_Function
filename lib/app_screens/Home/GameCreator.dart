import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/Home/SideMenu.dart';
import 'package:flutter_app/model/Users.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/games_provider.dart';
// import 'package:flutter_app/provider/games.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/CreateGame/GameCreateForm.dart';
import 'package:provider/provider.dart';


class GameCreator extends StatefulWidget {
  @override
  _GameCreatorState createState() => _GameCreatorState();
}

class _GameCreatorState extends State<GameCreator> {
  final _formGameKey = GlobalKey<FormState>();
  final Map<String, dynamic> _formGameData = {
    'title': '',
    // 'imageURL': [''],
    'images': [''],
    'singleImage': '',
    'platforms': [],
    'genres': [],
    'description': '',
    'releaseYear': '',
    'releaseMonth': '',
    'releaseDate': '',
    'isFavorite': false,
    'progression': 0.0,
    // 'videoURL': ''
  };
  List<String> ImageURL = [''];
  String image = '';
  String appBarTitle = 'Create Games';
  
  @override
  void initState(){
    // final Game gameSelect = Provider.of<GameProvider>(context, listen: false).selectedGame;
    // final String userID = Provider.of<User>(context, listen: false).id;
    // if(gameSelect != null /* && gameSelect.createUser == userID */){
    //   print("Intializing..");
    //   _formGameData['title'] = gameSelect.title;
    //   _formGameData['images'] = gameSelect.images;
    //   _formGameData['platforms'] = gameSelect.platforms;
    //   _formGameData['genres'] = gameSelect.genres;
    //   _formGameData['releaseYear'] = gameSelect.releaseYear;
    //   _formGameData['releaseMonth'] = gameSelect.releaseMonth;
    //   _formGameData['releaseDate'] = gameSelect.releaseDate;
    //   _formGameData['isFavorite'] = gameSelect.isFavorite;
    //   _formGameData['progression'] = gameSelect.progression;
    // }
    super.initState();
  }

  AppBar _buildAppBarCreator(){
    return AppBar(
      title: Text(appBarTitle),
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
              child: GameCreateForm(
                formData: _formGameData, formKey: _formGameKey, 
                ImageURL: ImageURL,
                singleImage: image,
                isPlatform: true, isGenre: true, isReleaseDate: true
              ),
            )
          ),
          _buildSaveForm(),
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

  Widget _buildSaveForm(){
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,

      child: FlatButton(
        shape: ContinuousRectangleBorder(side: BorderSide(color: lineColor)),
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Text("SAVE", style: settingsMainFont),
        ),
        onPressed: () => _submitForm(context),
      )
    );
  }

  void _submitForm(BuildContext context){
    if(!_formGameKey.currentState.validate()) return;
    _formGameKey.currentState.save();

    _formGameData['images'] = ImageURL;
    if(_formGameData['progression'] == null){
      _formGameData['progression'] = 0.0;
    } else if (_formGameData['progression'] == null){
      if(_formGameData['progression'].runtimeType != double)
        _formGameData['progression'] = double.parse(_formGameData['progression']);
    }
    _formGameData['platforms'] = (_formGameData['platforms'] == null) ? null : _formGameData['platforms'].toString();
    _formGameData['genres'] = (_formGameData['genres'] == null) ? null : _formGameData['platforms'].toString();

    // I'll check this codes later..
    if(appBarTitle == 'Create Games'){
      Provider.of<GameProvider>(context).createNewGame(_formGameData);
    } else if(appBarTitle == 'Modify Games'){
      // Provider.of<GameProvider>(context).modifyGame(_formGameData);
      Navigator.pop(context, '/');
    }

    print("Haep~Gyeok");
    Navigator.pushNamed(context, '/');
  }
}