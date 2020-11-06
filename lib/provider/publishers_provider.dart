import 'package:flutter/material.dart';
import 'package:flutter_app/data/games.dart';
import 'package:flutter_app/model/game/publisher.dart';


class PublisherProvider with ChangeNotifier{
  List<Publisher> _publisherItems = DUMMY_PUBLISHERS.toList();
  Publisher _selectedPublisherName;
  List<Publisher> get listPublisher => [..._publisherItems];
  Publisher get singlePublisher => _selectedPublisherName != null ? Publisher.from(_selectedPublisherName) : null;
}
