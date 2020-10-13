import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';

import 'package:flutter_app/data/games.dart';

class Products with ChangeNotifier {
  List<Game> _productItems = DUMMY_GAMES;
  Game _selectedGame;

  List<Game> get items {
    return [..._productItems]; // copy of productItem
  }

  Game get selectedGame {
    return Game.from(_selectedGame); // copy of selected game
  }

  void changeFavorite(bool isFavorite){
    _selectedGame.isFavorite = isFavorite;
    print(_selectedGame.isFavorite);
    notifyListeners();
  }

  void selectGame(Game game) {
    _selectedGame = game;
    notifyListeners();
  }


  void addGame(Game game){
    _productItems.add(game);
    notifyListeners();
  }

  void addProduct(value) {
    _productItems.add(value);
    notifyListeners();
  }

  void deleteProduct(value){
    _productItems.remove(value);
    notifyListeners();
  }
}