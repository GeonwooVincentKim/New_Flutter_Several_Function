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

  factory Game.from(Game game) {
    return Game(
      id: game.id ?? '',
      title: game.title ?? '',
      images: game.images ?? [],
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

}
