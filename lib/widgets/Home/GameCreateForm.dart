import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/genre.dart';
import 'package:flutter_app/model/game/platform.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Details/label.dart';


class GameCreateForm extends StatefulWidget {
  @override
  _GameCreateFormState createState() => _GameCreateFormState();

  final GlobalKey<FormState> formKey;
  final Map<String, dynamic> formData;
  final String ImageURL;
  // final List<String> ImageURL;
  final bool isPlatform;
  final bool isGenre;
  final bool isReleaseDate;

  GameCreateForm({
    @required this.formKey,
    @required this.formData,
    this.ImageURL,
    this.isPlatform = false,
    this.isGenre = false,
    this.isReleaseDate = false
  });
}

class _GameCreateFormState extends State<GameCreateForm> {
  List<PlatformG> PlatformList = [];
  List<Genre> GenreList = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Label(label: "TITLE"),
          _buildGameTitle(),
          Label(label: "Platform"),
          
          Label(label: "Genre"),
          // 
          Label(label: "Release Date"),
          // 
          Label(label: "Description"),
          _buildGameDescription(),
          Label(label: "Image URL"),
          // _buildGameImageURL(),
          // 
        ],
      )
    );
  }


  Widget _buildGameTitle(){
    return Column(
      children: <Widget>[
        TextFormField(
          initialValue: widget.formData['title'],
          validator: (value){
            if(value.isEmpty){return 'Please Enter some Text';}
            return null;
          }, onSaved: (value) => widget.formData['title'] = value
        ),
        SizedBox(height: defaultPadding * 2),
      ]
    );
  }

  Widget _buildGameDescription(){
    return Column(
      children: <Widget>[
        TextFormField(
          initialValue: widget.formData['description'],
          maxLines: 4,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87, width: 1.0)),
            labelText: '',
          ),
        ),
        SizedBox(height: defaultPadding * 2),
      ]
    );
  }
}