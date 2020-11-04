import 'package:flutter/material.dart';


class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  final _formFilterKey = GlobalKey<FormState>();
  final Map<String, dynamic> _formFilterListData = {
    'publisher': '',
    'platforms': [],
    'genres': [],
    'releaseYear': '',
    'releaseMonth': '',
  };

  

  @override
  Widget build(BuildContext context) {

  }
}