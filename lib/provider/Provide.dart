import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';

import 'package:flutter_app/data/games.dart';

class Products with ChangeNotifier {
  List<Game> _productItems = DUMMY_GAMES;
  List<Game> _userLists = [];
  Game _selectedGame;

  List<Game> get items {
    return [..._productItems]; // copy of productItem
  }

  List<Game> get userList{
    return [..._userLists];
  }

  Game get selectedGame {
    return Game.from(_selectedGame); // copy of selected game
  }

  void changeProgression(Game selectedGame, double progression){
    final int index = _userLists.indexWhere((game) => game.id == selectedGame.id);

    if(index != -1) {
      final Game newGame = Game.from(selectedGame);
      newGame.progression = progression;
      _userLists[index] = newGame;
    }
   
    notifyListeners();
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

  void addGameUserList(Game game) {
    _userLists.add(game);
    notifyListeners();
  }

  void deleteProduct(value){
    _userLists.remove(value);
    notifyListeners();
  }
}