import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavorites.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/DetailsWidget.dart';
import 'package:provider/provider.dart';
import 'details_attributes/DetailAttribute.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';

class DetailPage extends StatefulWidget {

  final String gameId;
  DetailPage({
    this.gameId
  });
  
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  Game selectedGame;
  final _textFieldController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    selectedGame = Provider.of<Products>(context, listen: false).selectedGame;
    super.initState();
  }

  @override
  void dispose(){
    _textFieldController.dispose();
    super.dispose();
  }

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
}


class DetailBody extends StatelessWidget{
  final Game gameDetailBody;
  DetailBody({
    @required this.gameDetailBody
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: DetailImageAttribute(image: gameDetailBody.images[0], isFavorite: gameDetailBody.isFavorite),
                ),

                // I should convert as CircularProgressIndicator function.
                ProgressBar(gameProgressBar: gameDetailBody.progression),
                Center(
                  child: TextAttribute(gameText: gameDetailBody),
                ),
                Center(
                  child: BottomImagesList(imageBottom: gameDetailBody.images[1]),
                ),
              ],
            ),
          ),
        )
        // padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
      ),
    );
  }
}

// 'ADD TO MY LIST' Dialog.
void showAddListDialog(BuildContext context) async{
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final _procedureController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // final GlobalKey<Game> _key = GlobalKey();

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
                              validator: (value) {
                                if(value.trim().isEmpty){
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
                onTap: (){
                  if(_formKey.currentState.validate()){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // builder: (context) {
                        //   return MyFavoritesPage();
                        // }
                        builder: (context) => MyFavoritesPage(
                          // int.parse(_procedureController.text.trim())
                        ),
                      )
                    );
                  }
                  showAlertDialog(context);
                  // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                }
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
      );
    },
  );
}