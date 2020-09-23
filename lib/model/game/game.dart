import 'package:flutter/foundation.dart';

class Game {
  final String id;
  final String title;
  final List<String> platforms;
  final List<String> genres;
  final String editor;
  final String description;
  final String releaseDate;
  final bool isFavorite;
  final int progression;

  const Game({
    @required this.id,
    @required this.title,
    @required this.platforms,
    @required this.genres,
    @required this.editor,
    this.description,
    @required this.releaseDate,
    @required this.isFavorite,
    this.progression
  });
}