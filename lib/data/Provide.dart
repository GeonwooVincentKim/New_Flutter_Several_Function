import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';

class Products with ChangeNotifier {
  List<Game> _productItems = [];

  List<Game> get items {
    return [..._productItems];
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