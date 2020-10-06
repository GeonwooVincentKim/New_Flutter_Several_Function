import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';

import 'package:flutter_app/data/games.dart';

class Products with ChangeNotifier {
  List<Game> _productItems = DUMMY_GAMES;
  Game _selectedGame = null;

  List<Game> get items {
    return [..._productItems];
  }

  // {..._selectedGame}

  void addProduct(value) {
    _productItems.add(value);
    notifyListeners();
  }

  void deleteProduct(value){
    _productItems.remove(value);
    notifyListeners();
  }
}