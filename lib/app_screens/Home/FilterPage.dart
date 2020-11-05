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
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello World"),
    );
  }
}