import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';

import 'package:flutter_app/data/games.dart';

class Products with ChangeNotifier {
  List<Game> _productItems = DUMMY_GAMES; // Import Games DummyData (Stored Data that already converted)
  List<Game> _userLists = []; // Changing User Game Data (Change some values of UserGameData)
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

  void addGameUserList(Game game) {
    _userLists.add(game);
    notifyListeners();
  }

  void deleteGame(Game game){
    // _userLists.removeWhere((element) => element.id == game.id);
    _userLists.remove(game);
    notifyListeners();
  }
}