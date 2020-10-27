import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/game_provider.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_form.dart';
import 'package:flutter_app/widgets/Details/detail_image.dart';
import 'package:flutter_app/widgets/Details/label.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';


class DetailPage extends StatefulWidget {
  final String gameID;
  DetailPage({this.gameID});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Game> listProgression = [];
  Game selectedGame;
  double _progression = 0.0;
  bool isFavorite;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    setState(() {
      selectedGame = Provider.of<GameProvider>(context, listen: false).selectedGame;
    });

    if (selectedGame == null) {
      print("Passing..??");
      final List<Game> listGame = Provider.of<GameProvider>(context, listen: false).gameItems.toList();
      selectedGame = listGame.firstWhere((game) => game.id == widget.gameID);
    }
    super.initState();
  }

  Widget _buildDetailsAppBar() {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(selectedGame.title),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(IconMoon.iedit, color: Colors.white,),
          onPressed: () {showAddListDialog(context);},
        ),
      ],
    );
  }

  Widget _buildDetailsText(Game selectedGame) {
    return Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(selectedGame.title.toUpperCase(), style: mainFont,),
              SizedBox(height: defaultPadding),
              DetailsForm(contentsTitle: "Platforms ", contentsInfo: selectedGame.platforms[0],),
              DetailsForm(contentsTitle: "Genres ", contentsInfo: selectedGame.genres[0],),
              DetailsForm(contentsTitle: "Progressions ", contentsInfo: (selectedGame.progression).toString(),),
              DetailsForm(contentsTitle: "Editor ", contentsInfo: selectedGame.publisher,),
              DetailsForm(contentsTitle: "ReleaseData ", contentsInfo: selectedGame.releaseDate),
              Label(label: "Description: "),
              SizedBox(height: defaultPadding / 2),
              Text(selectedGame.description, style: TextStyle(color: textInfoColor)),
            ]));
  }

  Widget _buildBottomImage(){
    return Container(
      padding: EdgeInsets.only(right: 10.0, top: 5.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              _buildBottomImageList(),
              _buildBottomImageList()
            ],
          ),
          CustomDivider(color: Colors.transparent),
          Row(
            children: [
              _buildBottomImageList(),
              _buildBottomImageList()
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBottomImageList(){
    return Expanded(
      child: Column(
        children: <Widget>[
          Container(
            // To separate between spaces of images, I've just set width as 150.
            // Otherwise, the images between width of images stick together.
            // (Horizontal-Part).
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                selectedGame.images[1],
                fit: BoxFit.fitWidth,
              ),
            )
          )
        ],
      ),
    );
  }

  Widget _buildDetailsBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          DetailImageAttribute(image: selectedGame.images[0], isFavorite: selectedGame.isFavorite),
          ProgressBar(gameProgressBar: selectedGame.progression,),
          _buildDetailsText(selectedGame),
          _buildBottomImage(),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildDetailsAppBar(),
      body: _buildDetailsBody(),
    );
  }

  // 'ADD TO MY LIST' Dialog.
  void showAddListDialog(BuildContext context) async {
    return showDialog(
      context: context,
      // barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ADD TO MY LIST', textAlign: TextAlign.center),
          titlePadding: EdgeInsets.symmetric(vertical: 20),
          contentPadding: EdgeInsets.zero,
          content: Container(
            width: MediaQuery.of(context).size.width,
            child: Form(
              key: _formKey,
              child: _buildAlertTileContent(),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAlertTileContent(){
    final _procedureController = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
            transparent_divider(),
            Row(children: [
              Expanded(
                child: Text("Progress: ", style: TextStyle(fontWeight: FontWeight.w300,)),
              ),
              Expanded(
                child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87, width: 1.5),
                        ),
                        hintText: '10%'),
                    // controller: _procedureController,
                    keyboardType: TextInputType.number,
                    onSaved: (progression) {
                      print('progression');
                      setState(() {
                        _progression = double.parse(progression);
                        print(_progression);
                      });
                      print(_progression);
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please Input your Procedure-Number Value.";
                      }
                      return null;
                    }),
              ),
            ]),
          ]),
        ),
        transparent_divider(),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              "+ Add to my List",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          onTap: () => _submitForm(context)
        ),
      ],
    );
  }

  void _submitForm(BuildContext context) {
    if (!_formKey.currentState.validate()) return;

    _formKey.currentState.save();
    Provider.of<GameProvider>(context).addGameList(selectedGame);
    Provider.of<GameProvider>(context).changeProgression(selectedGame, _progression);
    Provider.of<GameProvider>(context).deleteGame(selectedGame);

    Navigator.of(context).pop();
  }
}
