import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/details_attributes/DetailAttribute.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/DetailsWidget.dart';

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
                )
              ],
            ),
          ),
        )
        // padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
      ),
    );
  }
}
