import 'package:flutter/foundation.dart';

class Game {
  final String id;
  final String title;
  List<String> images;
  final List<String> platforms;
  final List<String> genres;
  final String publisher;
  final String description;
  final String releaseDate;
  bool isFavorite;
  double progression;
  String videoUrl;

  Game({
    @required this.id,
    @required this.title,
    this.images,
    @required this.platforms,
    @required this.genres,
    @required this.publisher,
    this.description,
    @required this.releaseDate,
    @required this.isFavorite,
    this.progression,
    this.videoUrl,
  });

}


// class Products with ChangeNotifier {
//   List<Game> _items = [];
//
//   List<Game> get items {
//     return [...items];
//   }
//
//   void addProduct(value) {
//     _items.add(value);
//     notifyListeners();
//   }
//
//   void deleteProduct(value){
//     _items.remove(value);
//     notifyListeners();
//   }
// }