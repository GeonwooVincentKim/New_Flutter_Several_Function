import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/provider.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:provider/provider.dart';

class FavoritesGameList extends StatelessWidget {
  final Game gameList;
  FavoritesGameList({
    @required this.gameList
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Provider.of<GameProvider>(context, listen: false).selectGame(gameList);
        Navigator.pushNamed(context, '/game/${gameList.id}');
      },

      child: Column(
        children: [
          gameList.isFavorite?
            Expanded(flex: 2, child: _buildMyFavoritesImage(), ) : Container(),
          gameList.isFavorite?
            Expanded(flex: 1, child: _buildMyFavoritesText(context), ) : Container(),
        ],
      ),
    );
  }

  Widget _buildMyFavoritesImage(){
    return Container( child: Image.asset( gameList.images[1], fit: BoxFit.fill ), );
  }

  Widget _buildMyFavoritesText(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: Colors.black12,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(gameList.title, textScaleFactor: 2, textAlign: TextAlign.center, style: favoritesFont ),
        ],
      ),
    );
  }
}
