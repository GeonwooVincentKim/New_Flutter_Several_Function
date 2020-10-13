import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/details_attributes/DetailsBody.dart';
import 'package:flutter_app/app_screens/main/Home.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavorites.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/font_style/FontWidget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';

class DetailPage extends StatefulWidget {

  final String gameId;
  // DetailPage({
  //   Key key,
  //   this.gameId
  // }) : super(key: key);
  DetailPage({
    this.gameId
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Game> listProgression = [];
  Game selectedGame;
  double _progression = 0.0;

  final _formKey = GlobalKey<FormState>();
  
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      selectedGame = Provider.of<Products>(context, listen: false).selectedGame;
    });

    if(selectedGame == null) {
      final List<Game> listGame = Provider.of<Products>(context, listen: false).items.toList();
      selectedGame = listGame.firstWhere((game) => game.id == widget.gameId);
    }
  
    super.initState();
  }
 
  // @override
  // void dispose(){
  //   _textFieldController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(selectedGame.title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              IconMoon.iedit,
              color: Colors.white,
            ),
            onPressed: (){
              showAddListDialog(context);
            }
          ),
        ],
      ),
      body: DetailBody(gameDetailBody: selectedGame),
    );
  }

  // 'ADD TO MY LIST' Dialog.
  void showAddListDialog(BuildContext context) async{
    final _procedureController = TextEditingController();

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
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                      children: [
                        Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
                        // CustomDivider(color: Colors.transparent),
                        transparent_divider(),
                        Row(
                          children: [
                            Expanded(
                              child: Text("Progress: ", style: TextStyle(
                                fontWeight: FontWeight.w300,
                              )),
                            ),

                            Expanded(
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black87, width: 1.5),
                                    ),
                                    hintText: '10%'),
                                controller: _procedureController,
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
                                  if(value.isEmpty){
                                    return "Please Input your Procedure-Number Value.";
                                  }
                                  return null;
                                }
                              ),
                            ),
                          ]
                        ),
                      ]
                    ),
                  ),
                  transparent_divider(),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      // padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Text(
                        "+ Add to my List",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    // onTap: null,
                    onTap: () => _submitForm(context)
                  ),
                  // OutlineButton(
                  //   textColor: Colors.white,
                  //   highlightedBorderColor: Colors.white,
                  //   borderSide: BorderSide(
                  //     color: Colors.white, width: 0.8, style: BorderStyle.solid),
                  //     onPressed: MyFavoritesPage,
                  //   ),
                  //
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _submitForm (BuildContext context) {
    if(!_formKey.currentState.validate())
      return;

    _formKey.currentState.save();
    
    Provider.of<Products>(context).addGameUserList(selectedGame);
    Provider.of<Products>(context).changeProgression(selectedGame, _progression);

    Navigator.of(context).pop();
  }
}
