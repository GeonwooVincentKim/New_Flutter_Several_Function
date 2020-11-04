import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/genre.dart';
import 'package:flutter_app/model/game/platform.dart';
import 'package:flutter_app/provider/genres.dart';
import 'package:flutter_app/provider/platforms.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/CreateGame/dropdown_list.dart';
import 'package:flutter_app/widgets/CreateGame/list_checkbox_with_label.dart';
import 'package:flutter_app/widgets/Details/label.dart';
import 'package:provider/provider.dart';


class GameCreateForm extends StatefulWidget {
  @override
  _GameCreateFormState createState() => _GameCreateFormState();

  final GlobalKey<FormState> formGameKey;
  final Map<String, dynamic> formGameData;
  // final String ImageURL;
  final String singleImage;
  final List<String> ImageURL;
  final bool isPlatform;
  final bool isGenre;
  final bool isReleaseDate;

  GameCreateForm({
    @required this.formGameKey,
    @required this.formGameData,
    this.singleImage,
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
  List<String> _YearDropdown;
  List<String> _MonthDropdown;
  List<String> _DaysDropdown;
  String yearList;
  String monthList;
  String dayList;
  List<DropdownMenuItem<String>> _YearList;
  List<DropdownMenuItem<String>> _MonthList;
  List<DropdownMenuItem<String>> _DayList;

  final List<String> YearList = [];
  final List<String> MonthList = [];
  final List<String> DayList = [];

  @override
  void initState(){
    PlatformList = Provider.of<PlatformProvider>(context, listen: false).listPlatforms;
    GenreList = Provider.of<GenreProvider>(context, listen: false).listGenres;

    final DateTime today = DateTime.now();
    for(int i = 1870; i <= today.year; i++) YearList.add(i.toString());
    for(int i = 1; i <= today.month; i++) MonthList.add(i.toString());
    if(widget.formGameData['releaseYear'] == '') widget.formGameData['releaseYear'] = YearList[YearList.length - 1];
    if(widget.formGameData['releaseMonth'] == '') widget.formGameData['releaseMonth'] = MonthList[MonthList.length - 1];
    if(widget.isReleaseDate){
      for(int i = 1; i <= 31; i++) DayList.add(i.toString());
      if(widget.formGameData['releaseDate'] == '') widget.formGameData['releaseDate'] = DayList[0];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formGameKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Label(label: "TITLE"),
          _buildGameTitle(),
          Label(label: "Platform"),
          ListCheckBox(
            currentList: PlatformList,
            listSelected: widget.formGameData['platforms'],
          ),
          Label(label: "Genre"),
          ListCheckBox(
            currentList: GenreList,
            listSelected: widget.formGameData['genres'],
          ),
          //Label(label: "Release Date"),
          //  _buildGameReleaseDate(),
          Label(label: "Description"),
          _buildGameDescription(),
          Label(label: "Image URL"),
          _buildGameImageURL(),
          SizedBox(height: defaultPadding * 2),
        ],
      )
    );
  }


  Widget _buildGameTitle(){
    return Column(
      children: <Widget>[
        TextFormField(
          initialValue: widget.formGameData['title'],
          validator: (value){
            if(value.isEmpty){return 'Please Enter some Text';}
            return null;
          }, onSaved: (value) => widget.formGameData['title'] = value
        ),
        SizedBox(height: defaultPadding * 2),
      ]
    );
  }

  Widget _buildGameReleaseDate(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            DropDownList(
              contentsList: YearList,
              contents: widget.formGameData['releaseYear'],
              onChange: (String newValue){
                setState((){widget.formGameData['releaseYear'] = newValue;});
              },
            ),
            DropDownList(
              contentsList: MonthList,
              contents: widget.formGameData['releaseMonth'],
              onChange: (String newValue){
                setState((){widget.formGameData['releaseMonth'] = newValue;});
              }
            ),
            // DropDownList(
            //   contentsList: DayList,
            //   contents: widget.formGameData['releaseDay'] ,
            //   onChange: (String newValue){
            //     setState((){widget.formGameData['releaseDay'] = newValue;});
            //   }
            // ),
            // DropdownButton(
            //   value: YearList[20],
            //   items: YearList.map<DropdownMenuItem<String>>((yearList){
            //     return DropdownMenuItem(
            //       value: yearList,
            //       child: Padding(
            //         padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            //         child: Text(yearList),
            //       )
            //     );
            //   }).toList(),
            //   onChanged: (String newValue){
            //     setState((){widget.formGameData['releaseYear'] = newValue;});
            //   },
            // )
          ],
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }

  Widget _buildGameDescription(){
    return Column(
      children: <Widget>[
        TextFormField(
          initialValue: widget.formGameData['description'],
          maxLines: 4,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black87, width: 1.0)),
            labelText: '',
          ),
          validator: (value){
            if(value.isEmpty){return 'Please Enter some Text';}
            return null;
          }, onSaved: (value) => widget.formGameData['description'] = value
        ),
        SizedBox(height: defaultPadding * 2),
      ]
    );
  }

  Widget _buildGameImageURL(){
    return Column(
      children: List.generate(widget.ImageURL.length, (index) {
        return TextFormField(
          initialValue: widget.ImageURL[index], 
          validator: (value){
            if(value.isEmpty) return 'Please input your IMAGE-URL';
            return null;
          },
          onSaved: (String value) => setState((){widget.ImageURL[index] = value;}),
          // onSaved: (value) => widget.formGameData['imageURL'] = value.replaceAll(new RegExp(r' '), ''),
        );
      }),
    );
  }
}