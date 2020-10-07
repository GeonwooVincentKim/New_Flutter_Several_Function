import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'package:flutter_app/model/game/game.dart';
import 'details_attributes/DetailAttribute.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';

class DetailPage extends StatelessWidget{

  final Game gameDetail;
  DetailPage({
    @required this.gameDetail
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("GAME TITLE"),
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
      body: DetailBody(gameDetailBody: gameDetail,),
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
                  child: DetailImageAttribute(game: gameDetailBody),
                ),

                // I should convert as CircularProgressIndicator function.
                ProgressBar(),
                Center(
                  child: TextAttribute(gameText: gameDetailBody),
                ),
                Center(
                  child: BottomImage(),
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
