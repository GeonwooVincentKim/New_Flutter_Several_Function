import 'package:flutter/material.dart';
import 'package:flutter_app/provider/filter.dart';
import 'package:flutter_app/shared/helpers/helpers.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/CreateGame/GameCreateForm.dart';
import 'package:provider/provider.dart';


class Filter extends StatefulWidget {
  final String backPage;
  Filter({this.backPage});

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
    Map<String, dynamic> filter;
    if(widget.backPage == 'home') filter = Provider.of<Filters>(context, listen: false).homeFilters;
    else{filter = Provider.of<Filters>(context, listen: false).discoverFilters;}
    
    _formFilterListData['publisher'] = filter['publisher'];
    _formFilterListData['platforms'] = filter['platforms'];
    _formFilterListData['genres'] = filter['genres'];
    _formFilterListData['releaseDate'] = filter['releaseDate'];
    _formFilterListData['releaseYear'] = filter['releaseYear'];
    _formFilterListData['releaseMonth'] = filter['releaseMonth'];

    if(filter['releaseDate'] != ''){
      final DateTime releaseDate = getDateTimeFormat(filter['releaseDate']);
      _formFilterListData['releaseYear'] = releaseDate.year.toString();
      _formFilterListData['releaseMonth'] = releaseDate.month.toString();
    }
    super.initState();
  }

  Widget _filterAppBar(){
    return AppBar(
      title: Text("Filters"),
      backgroundColor: appBarColor,
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(IconMoon.icheck, color: Colors.white),
          onPressed: () => _filterSubmitForm(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _filterAppBar(),
      body: _filterBody(),
    );
  }

  Widget _filterBody(){
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      color: backgroundColor,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: SingleChildScrollView(
              child: GameCreateForm(
                formGameData: _formFilterListData,
                formGameKey: _formFilterKey,
                imageURL: [],
                isTitle: false,
                isPublisher: false, // Not to visible when state is 'true' in CreateGame page.
              )
            )
          ),
          _buildSubmitButton(context)
        ]
      )
    );
  }

  Widget _buildSubmitButton(context){
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              shape: ContinuousRectangleBorder(side: BorderSide(color: lineColor)),
              color: Colors.black87,
              child: Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Text("RESET", style: settingsMainFont),
              ), onPressed: () => _filterResetForm()
            ),
          ),
          Expanded(
            child: FlatButton(
              shape: ContinuousRectangleBorder(side: BorderSide(color: lineColor)),
              color: Colors.black87,
              child: Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Text("SAVE", style: settingsMainFont),
              ), onPressed: () => _filterSubmitForm()
            ),
          )
        ],
      )
    );
  }

  void _filterSubmitForm(){
    // if(!_formFilterKey.currentState.validate()) return;
    _formFilterKey.currentState.save();
    if(widget.backPage == 'home') Provider.of<Filters>(context, listen: false).changeHomeFilter(_formFilterListData);
    else Provider.of<Filters>(context, listen: false).changeDiscoverFilter(_formFilterListData);
  }

  void _filterResetForm(){
    _formFilterKey.currentState.reset();
    setState(() {
      _formFilterListData['publisher'] = '';
      _formFilterListData['platforms'] = [];
      _formFilterListData['genres'] = [];
      _formFilterListData['releaseYear'] = null;
      _formFilterListData['releaseMonth'] = null;
      _formFilterListData['releaseDate'] = '';
    });

    if(widget.backPage == 'home') Provider.of<Filters>(context, listen: false).resetHomeFilter();
    else Provider.of<Filters>(context, listen: false).resetDiscoverFilter();
  }
}