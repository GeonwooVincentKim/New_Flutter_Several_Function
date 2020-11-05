import 'package:flutter/material.dart';
import 'package:flutter_app/data/games.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/shared/helpers/helpers.dart';


class GameProvider with ChangeNotifier{
  List<Game> _gameItems = DUMMY_GAMES.toList();
  List<Game> _userItems = [];
  Game _selectedGame;
  
  List<Game> get gameItems => [..._gameItems];
  List<Game> get userItems => [..._userItems];
  Game get selectedGame => _selectedGame != null ? Game.from(_selectedGame) : null;
  
  void createNewGame(Map<String, dynamic> data){
    data['id'] = getRandomString(2);
    final Game newGame = Game.fromJSON(data);
    _userItems.add(newGame);
    notifyListeners();
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

  void changeFavorite(bool isFavorite){_selectedGame.isFavorite = isFavorite; notifyListeners();}
  void selectGame(Game game){_selectedGame = game; notifyListeners();}
  void addGameList(Game game){_userItems.add(game); notifyListeners();}
}
