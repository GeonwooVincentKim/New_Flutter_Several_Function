import 'package:flutter/foundation.dart';
// part "game.d.dart";

class Game {
  final String id;
  final String title;
  List<String> images;
  final String singleImage;
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
    this.singleImage,
    @required this.platforms,
    @required this.genres,
    this.publisher,
    this.description,
    @required this.releaseDate,
    @required this.isFavorite,
    this.progression,
    this.videoUrl,
  });

  // factory Game.fromJson(Map<String, dynamic> jsonData) => _$GameFromJson(jsonData);
  // Map<String dynamic> toJsonData => _$GameToJson(this);
  // Allocates Memory of Game Class by using 'factory'.
  factory Game.from(Game game) {
    return Game(
      id: game.id ?? '',
      title: game.title ?? '',
      images: game.images ?? [],
      singleImage: game.singleImage ?? '',
      platforms: game.platforms ?? [],
      genres: game.genres ?? [],
      publisher: game.publisher ?? [],
      description: game.description ?? '',
      releaseDate: game.releaseDate ?? '',
      isFavorite: game.isFavorite ?? false,
      progression: game.progression ?? 0.0,
      videoUrl: game.videoUrl ?? ''
    );
  }
  
  // Mapign Game form to modify or add new games into my DiscoverList.
  factory Game.fromJSON(Map<String, dynamic> data){
    return Game(
      id: data['id'] ?? '',
      title: data['title'] ?? '',
      singleImage: data['singleImage'] ?? '',
      images: data['images'] ?? [],
      platforms: data['platforms'] ?? [],
      genres: data['genres'] ?? [],
      publisher: data['publisher'] ?? '',
      description: data['descrption'] ?? '',
      releaseDate: data['releaseDate'] ?? '',
      isFavorite: data['isFavorite'] ?? false,
      progression: data['progression'] ?? 0.0,
      videoUrl: data['videoURL'] ?? ''
    );
  }
   
  // Initializing Data
  factory Game.initialData(){
    return Game(
      id: '',
      title: '',
      images: [],
      singleImage: '',
      platforms: [],
      genres: [],
      publisher: '',
      description: '',
      releaseDate: '',
      isFavorite: false,
      progression: 0.0,
      videoUrl: ''
    );
  }
}
