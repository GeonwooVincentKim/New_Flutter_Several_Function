import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/genre.dart';
import 'package:flutter_app/model/game/platform.dart';
import 'package:flutter_app/provider/genres.dart';
import 'package:flutter_app/provider/platforms.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/CreateGame/list_checkbox_with_label.dart';
import 'package:flutter_app/widgets/Details/label.dart';
import 'package:provider/provider.dart';


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
  List<String> ListNamePublisher = [];
  List<DropdownMenuItem<String>> _YearList;
  List<DropdownMenuItem<String>> _MonthList;
  List<DropdownMenuItem<String>> _DayList;

  final List<String> YearList = [];
  final List<String> MonthList = [];
  final List<String> DayList = [];
  // final List<String> MonthList = <String>['Januery', 'Feburary', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

  @override
  void initState(){
    PlatformList = Provider.of<PlatformProvider>(context, listen: false).listPlatforms;
    GenreList = Provider.of<GenreProvider>(context, listen: false).listGenres;

    final DateTime today = DateTime.now();
    for(int i = 1000; i <= today.year; i++){
      YearList.add(i.toString());
    }
    if(widget.formData['releaseYear'] == '') widget.formData['releaseYear'] = YearList[YearList.length - 1];
    if(widget.formData['releaseMonth'] == '') widget.formData['releaseMonth'] = MonthList[0];
    // // if(widget.isReleaseDate)
    super.initState();
  }

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
          ListCheckBox(
            currentList: PlatformList,
            listSelected: widget.formData['platforms'],
          ),
          Label(label: "Genre"),
          ListCheckBox(
            currentList: GenreList,
            listSelected: widget.formData['genres'],
          ),
          Label(label: "Release Date"),
          // _buildGameReleaseDate(),
          Label(label: "Description"),
          _buildGameDescription(),
          Label(label: "Image URL"),
          _buildGameImageURL(),
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

  Widget _buildGameReleaseDate(){
    return Column(
      children: <Widget>[
        // DropdownButton(
        //   value: YearList,
        //   items: widget.formData['releaseYear'],
        //   onChanged: (String newValue){
        //     setState((){
        //       YearList = newValue
        //     });
        //   }
        // )
      ],
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
          validator: (value){
            if(value.isEmpty){return 'Please Enter some Text';}
            return null;
          }, onSaved: (value) => widget.formData['description'] = value
        ),
        SizedBox(height: defaultPadding * 2),
      ]
    );
  }

  Widget _buildGameImageURL(){
    return Column(
      children: <Widget>[
        // List.generate(widget.ImageURL.length)
        TextFormField(
          initialValue: widget.formData['image'], 
          validator: (value){
            if(value.isEmpty) {return 'Please input your IMAGE-URL';}
            return null;
          },
          onSaved: (value) => widget.formData['image'] = value.replaceAll(new RegExp(r' '), ''),
        ),SizedBox(height: defaultPadding * 2),
      ]
    );
  }
}