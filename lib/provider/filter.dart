import 'package:flutter/material.dart';

class Filters with ChangeNotifier{
  final Map<String, dynamic> _homeFilter = {
    ''
    'platforms': [],
    'genres': [],
    'releaseDate': '',
    'releaseYear': '',
    'releaseMonth': '',
  };

  final Map<String, dynamic> _discoverFilter = {
    // 'platforms': 
  };
}