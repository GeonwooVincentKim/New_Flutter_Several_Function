import 'package:flutter/material.dart';

class Filters with ChangeNotifier{
  final Map<String, dynamic> _homeFilter = {
    'publisher': '',
    'platforms': [],
    'genres': [],
    'releaseDate': '',
    'releaseYear': '',
    'releaseMonth': '',
  };

  final Map<String, dynamic> _discoverFilter = {
    'publisher': '',
    'platforms': [],
    'genres': [],
    'releaseDate': '',
    'releaseYear': '',
    'releaseMonth': '', 
  };

  Map<String, dynamic> get homeFilters => {..._homeFilter};
  Map<String, dynamic> get discoverFilters => {..._discoverFilter};

  void changeHomeFilter(Map<String, dynamic> currentFilter){
    _homeFilter['publisher'] = currentFilter['publisher'];
    _homeFilter['platforms'] = currentFilter['platforms'];
    _homeFilter['genres'] = currentFilter['genres'];
    _homeFilter['releaseDate'] = currentFilter['releaseDate'];
    _homeFilter['releaseYear'] = currentFilter['releaseYear'];
    _homeFilter['releaseMonth'] = currentFilter['releaseMonth'];
    notifyListeners();
  }

  void changeDiscoverFilter(Map<String, dynamic> currentFilter){
    _homeFilter['publisher'] = currentFilter['publisher'];
    _homeFilter['platforms'] = currentFilter['platforms'];
    _homeFilter['genres'] = currentFilter['genres'];
    _homeFilter['releaseDate'] = currentFilter['releaseDate'];
    _homeFilter['releaseYear'] = currentFilter['releaseYear'];
    _homeFilter['releaseMonth'] = currentFilter['releaseMonth'];
    notifyListeners();
  }
}
