import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';

class Cart with ChangeNotifier{
  List<Game> _items = [];
  List<Game> get items{
    return [...items];
  }

}
