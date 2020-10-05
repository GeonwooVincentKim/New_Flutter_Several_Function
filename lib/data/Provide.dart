import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';

class Products with ChangeNotifier {
  List<Game> _items = [];

  List<Game> get items {
    return [...items];
  }

  void addProduct(value) {
    _items.add(value);
    notifyListeners();
  }
}