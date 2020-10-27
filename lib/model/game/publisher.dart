import 'package:flutter/foundation.dart';

class Publisher {
  final String id;
  final String name;
  final String description;
  final String country;

  const Publisher({
    @required this.id,
    @required this.name,
    this.description,
    this.country
  });
}