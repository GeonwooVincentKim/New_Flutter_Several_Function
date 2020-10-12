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
  final String image;
  
  DetailsImage({
    @required this.image
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 420,
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}

// For BottomImage of 'details-page'.
// ignore: camel_case_types
class BottomImagesList extends StatelessWidget{
  // final String bottomimage;
  // DetailsBottomImages({
  //   @required this.bottomimage
  // });
  final String imageBottom;
  BottomImagesList({
    @required this.imageBottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, top: 5.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              BottomImage(),
              BottomImage(),
            ]
          ),
          CustomDivider(color: Colors.transparent),
          Row(
            children: [
              BottomImage(),
              BottomImage(),
            ]
          )
        ],
      ),
    );
  }
}

