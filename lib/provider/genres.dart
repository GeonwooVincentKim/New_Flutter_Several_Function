import 'package:flutter/material.dart';
import 'package:flutter_app/data/games.dart';
import 'package:flutter_app/model/game/genre.dart';


class GenreProvider with ChangeNotifier{
  List<Genre> _genreItems = DUMMY_GENRES.toList();

  List<Genre> get listGenres {return [..._genreItems];}
}