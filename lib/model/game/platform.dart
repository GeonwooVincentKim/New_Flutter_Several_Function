import 'package:flutter/foundation.dart';

class PlatformG {
  final String id;
  final String name;
  final String description;
  final String developer;

  const PlatformG({
    @required this.id,
    @required this.name,
    this.description,
    this.developer
  });
}