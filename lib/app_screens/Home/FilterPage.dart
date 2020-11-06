import 'package:flutter/material.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/CreateGame/GameCreateForm.dart';


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
      child: FlatButton(
        shape: ContinuousRectangleBorder(side: BorderSide(color: lineColor)),
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Text("SAVE", style: settingsMainFont),
        ), onPressed: () => _filterSubmitForm()
      )
    );
  }

  void _filterSubmitForm(){
    if(!_formFilterKey.currentState.validate()) return;
    _formFilterKey.currentState.save();
  }
}