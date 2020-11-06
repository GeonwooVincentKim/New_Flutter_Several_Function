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
  final formGameKey = GlobalKey<FormState>();
  final Map<String, dynamic> formGameData = {
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
    // 'releaseDay': '',
    'isFavorite': false,
    'progression': 0.0,
    // 'videoURL': ''
  };
  List<String> ImageURL = [''];
  String image = '';
  String appBarTitle = 'Create Games';
  
  @override
  void initState(){
    final Game gameSelect = Provider.of<GameProvider>(context, listen: false).selectedGame;
    // final String userID = Provider.of<User>(context, listen: false).id;
    if(gameSelect != null /* && gameSelect.createUser == userID */){
      print("Intializing..");
      appBarTitle = 'Edit Game';

      formGameData['id'] = gameSelect.id;
      formGameData['title'] = gameSelect.title;
      formGameData['images'] = gameSelect.images;
      // ImageURL.add(gameSelect.images[0]);
      
      formGameData['platforms'] = gameSelect.platforms;
      formGameData['genres'] = gameSelect.genres;
      // formGameData['releaseYear'] = gameSelect.releaseDate.year.toString();
      // formGameData['releaseMonth'] = gameSelect.releaseMonth;
      // formGameData['releaseDay'] = 
      // formGameData['releaseDate'] = gameSelect.releaseDate;
      formGameData['isFavorite'] = gameSelect.isFavorite;
      formGameData['progression'] = gameSelect.progression;
    }
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
                formGameData: formGameData, formGameKey: formGameKey, 
                ImageURL: ImageURL,
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
    if(!formGameKey.currentState.validate()) return;
    formGameKey.currentState.save();

    // formGameData['images'] = ImageURL;
    final String month = formGameData['releaseMonth'];
    final String day = formGameData['releaseDay'];
    formGameData['releaseDate'] = "$formGameData['releaseYear']/$month/$day";
    
    if(formGameData['progression'] == null){
      formGameData['progression'] = 0.0;
    } else if (formGameData['progression']  != null){
      if(formGameData['progression'].runtimeType != double)
        formGameData['progression'] = double.parse(formGameData['progression']);
    }
    formGameData['platforms'] = (formGameData['platforms'] != null) ? formGameData['platforms'].cast<String>() : null;
    formGameData['genres'] = (formGameData['genres'] != null) ? formGameData['platforms'].cast<String>() : null;

    print(appBarTitle);
    // I'll check this codes later..
    if(appBarTitle == 'Create Games'){
      Provider.of<GameProvider>(context).createNewGame(formGameData);
      print(GameProvider);
    } else if(appBarTitle == 'Modify Games'){
      Provider.of<GameProvider>(context).editNewGame(formGameData);
      print(GameProvider);
      print("HIIIIIIIIIII");
      Navigator.pop(context, '/');
    }

    print("Haep~Gyeok");
    Navigator.pushNamed(context, '/');
  }
}