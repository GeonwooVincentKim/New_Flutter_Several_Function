import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/BottomImage.dart';
import 'font_style/FontWidget.dart';


// For Text-font of 'details-page'.
// ignore: camel_case_types
class DetailsText extends StatelessWidget{
  final Game gameDetailsText;
  DetailsText({
    @required this.gameDetailsText
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          MainFont(gameMainFont: gameDetailsText),
          transparent_divider(),
          PlatForm(gamePlatform: gameDetailsText),
          transparent_divider(),
          Progressions(gameProgressions: gameDetailsText),
          transparent_divider(),
          Editor(gameEditor: gameDetailsText),
          transparent_divider(),
          ReleaseDate(gameReleaseDate: gameDetailsText),
          transparent_divider(),
          Description(gameDescription: gameDetailsText),
          transparent_divider(),
          ImageFonts(gameImageFonts: gameDetailsText),
          transparent_divider(),
        ],
      )
    );
  }
}


// For Image of 'details-page'.
// ignore: camel_case_types
class DetailsImage extends StatelessWidget{
  final Game gameDetailImage;
  
  DetailsImage({
    @required this.gameDetailImage
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 420,
      child: Image.asset(
        gameDetailImage.images[0],
        fit: BoxFit.fill,
      ),
    );
  }
}

// For BottomImage of 'details-page'.
// ignore: camel_case_types
class DetailsBottomImages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, top: 5.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              ExpandedBottomImage(),
              ExpandedBottomImage(),
            ]
          ),
          CustomDivider(color: Colors.transparent),
          Row(
            children: [
              ExpandedBottomImage(),
              ExpandedBottomImage(),
            ]
          )
        ],
      ),
    );
  }
  
  // ignore: non_constant_identifier_names
  ExpandedBottomImage(){
    return Expanded(
      child: Column(
          children: <Widget>[
            BottomImage(),
          ]
      ),
    );
  }
}

