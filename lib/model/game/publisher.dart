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

  factory Publisher.from(Publisher publisher){
    return Publisher(
      id: publisher.id ?? '',
      name: publisher.name ?? '',
      description: publisher.description ?? '',
      country: publisher.country ?? ''
    );
  }

  factory Publisher.fromMap(Map<String, dynamic> data){
    return Publisher(
      id: data['id'] ?? '',
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      country: data['country'] ?? '',
    );
  }

  factory Publisher.initialData(){
    return Publisher(
      id: '',
      name: '',
      description: '',
      country: ''
    );
  }
}
