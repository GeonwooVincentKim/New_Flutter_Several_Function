import 'package:flutter/foundation.dart';

class Genre {
  final String id;
  final String name;
  final String description;

  const Genre({
    @required this.id,
    @required this.name,
    this.description
  });
}