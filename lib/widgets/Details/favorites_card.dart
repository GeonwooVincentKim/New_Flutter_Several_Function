import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/gradient_box.dart';
import 'package:provider/provider.dart';

class FavoritesGameCard extends StatelessWidget {
  final Game card;
  FavoritesGameCard({
    @required this.card
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<Products>(context, listen: false).selectGame(card);
        Navigator.pushNamed(context, '/game/${card.id}');
      },
      // child: Card(
      //   margin: EdgeInsets.only(bottom: defaultPadding),
        
      //   child: Stack(
      //     children: [
      //       card.isFavorite?
      //         _buildMyFavoritesImage(context) : Container(),
      //         // FavoriteImage(game: card) : Container(),
      //       card.isFavorite?
      //         // FavoriteText(gameText: card) : Container(),
      //         _buildMyFavoritesText(context) : Container(),
      //     ],
      //   ),
      // ),
      child: Column(
        children: [
          // gameContents.isFavorite?
          //   FavoriteImage(game: gameContents) : Container(),
          // gameContents.isFavorite?
          //   FavoriteText(gameText: gameContents) : Container(),
          card.isFavorite?
            Expanded(
              flex: 2,
              child: _buildMyFavoritesImage(),
              // child: FavoriteImage(game: gameContents),
            ) : Container(),
          card.isFavorite?
            Expanded(
              flex: 1,
              child: _buildMyFavoritesText(context),
              // child: FavoriteText(gameText: gameContents),
            ) : Container(),
        ],
      ),
    );
  }

  Widget _buildMyFavoritesImage(){
    return Container(
      // width: 100,
      child: Image.asset(
        card.images[1],
        fit: BoxFit.fill
      ),
    );
  }

  Widget _buildMyFavoritesText(BuildContext context){
    // return Positioned(
    //   bottom: 0,
    //   right: 0,
    //   left: 0,
    //   child: GradientBox(
    //     hasBorderRadius: false,
    //     borderRadius: BorderRadius.only(
    //       bottomLeft: Radius.circular(0.0),
    //       bottomRight: Radius.circular(0.0) 
    //     ),
    //     padding: EdgeInsets.symmetric(vertical: defaultPadding),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: <Widget>[
    //         Text(
    //             card.title,
    //             textScaleFactor: 2,
    //             textAlign: TextAlign.center,
    //             style: TextStyle(
    //               color: Colors.black,
    //               fontFamily: "icomoon",
    //               fontSize: 8,
    //             )
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
              card.title,
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "icomoon",
                fontSize: 8,
              )
          ),
        ],
      ),
    );
  }
}