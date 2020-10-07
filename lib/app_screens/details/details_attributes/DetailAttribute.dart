import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavorites.dart';
import 'package:flutter_app/data/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/DetailsWidget.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:provider/provider.dart';


// Image-Attributes that is below in the Detail-Page part.
class DetailImageAttribute extends StatelessWidget{
  // final _heightController = TextEditingController();
  final Game game;
  DetailImageAttribute({
    @required this.game
  });

  @override
  Widget build(BuildContext context){
    return Consumer<Products>(
      builder: (ctx, product, child) => (
        Stack(
          children: <Widget>[
            Container(
              child: DetailsImage(gameDetailImage: game),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    game.isFavorite?
                      IconMoon.istarfull : IconMoon.istar,
                  ),
                  // icon: Icon(
                  //   IconMoon.istarfull,
                  //   product.items[game].isFavorite? 
                  // ),
                  onPressed: (){
                    // setState((){
                    //   game.isFavorite = true;
                    // });
                    // Navigator.push(context, route))
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context){return MyFavoritesPage(gameMyFavorite: game);})
                    // );
                  }
              ),
            ),
          ]
        )
      ),
    );
  }
}

// Progress-Bar-Attributes that is belows in the Detail-Page part.
// ignore: camel_case_types
class ProgressBar extends StatelessWidget{
  final Game gameProgressBar;
  ProgressBar({
    @required this.gameProgressBar
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        LinearProgressIndicator(
          minHeight: 10,
          backgroundColor: Colors.grey,
          value: gameProgressBar.progression / 100
        ),
      ],
    );
  }

}

// Text-Attributes that is belows in the Detail-Page part.
class TextAttribute extends StatelessWidget{
  final Game gameText;
  TextAttribute({
    @required this.gameText
  });

  @override
  Widget build(BuildContext context){
    return Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Title
                DetailsText(gameDetailsText: gameText),
              ],
            ),
          ],
        )
    );
  }
}

// BottomImage-Attributes that is belows in the Detail-Page part.
class BottomImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 15.0),
      child: Column(
        children: <Widget>[
          DetailsBottomImages(),
        ]
      ),
    );
  }

}
