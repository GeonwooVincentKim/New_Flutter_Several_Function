import 'package:flutter/material.dart';
import 'package:flutter_app/data/games.dart';
import 'package:flutter_app/model/game/game.dart';


class GameProvider with ChangeNotifier{
  List<Game> _gameItems = DUMMY_GAMES;
  List<Game> _userItems = [];
  Game _selectedGame;
  List<String> a = [];

  List<Game> get gameItems {
    return [..._gameItems];
  }

  List<Game> get userItems {
    return [..._userItems];
  }

  Game get selectedGame{
    return Game.from(_selectedGame);
  }
  
  void changeProgression(Game selectedGame, double progression){
    final int index = _userItems.indexWhere((game) => game.id == selectedGame.id);

    if(index != 1){
      final Game newGame = Game.from(selectedGame);
      newGame.progression = progression;
      _userItems[index] = newGame;
    }
    notifyListeners();
  }

  void changeFavorite(bool isFavorite){
    _selectedGame.isFavorite = isFavorite;
    notifyListeners();
  }

  void selectGame(Game game){
    _selectedGame = game;
    notifyListeners();
  }

  void addGameList(Game game){
    _userItems.add(game);
    notifyListeners();
  }

  void deleteGame(Game game){
    _userItems.remove(game);
    notifyListeners();
  }
}
