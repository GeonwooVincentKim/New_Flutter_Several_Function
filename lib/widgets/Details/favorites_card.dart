import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/provider/game_provider.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:provider/provider.dart';

class FavoritesGameCard extends StatelessWidget {
  final Game card;
  FavoritesGameCard({
    @required this.card
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: (){
      //   Provider.of<Products>(context, listen: false).selectGame(card);
      //   Navigator.pushNamed(context, '/game/${card.id}');
      // },
      onTap: (){
        Provider.of<GameProvider>(context, listen: false).selectGame(card);
        Navigator.pushNamed(context, '/game/${card.id}');
      },

      child: Column(
        children: [
          card.isFavorite?
            Expanded(
              flex: 2,
              child: _buildMyFavoritesImage(),
            ) : Container(),
          card.isFavorite?
            Expanded(
              flex: 1,
              child: _buildMyFavoritesText(context),
            ) : Container(),
        ],
      ),
    );
  }

  Widget _buildMyFavoritesImage(){
    return Container(
      child: Image.asset(
        card.images[1],
        fit: BoxFit.fill
      ),
    );
  }

  Widget _buildMyFavoritesText(BuildContext context){
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
              style: favoritesFont
          ),
        ],
      ),
    );
  }
}