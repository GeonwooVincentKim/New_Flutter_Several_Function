import 'package:flutter/material.dart';
import 'package:flutter_app/data/games.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

import 'package:flutter_app/widgets/expanded/divider.dart';
import 'FontStyle.dart';

// Text-font attributes for 'Main-Text' of 'details-page'.
// ignore: camel_case_types
class MainFont extends StatelessWidget{
  final Game gameMainFont;
  MainFont({
    @required this.gameMainFont
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        gameMainFont.title,
        textDirection: ui.TextDirection.ltr,
        // Couldn't define the name forms as 'Class'
        // Because It occurs error that just relating 'parameter'.
        // So I define as 'function' not 'Class'.
        style: mainFont,
      ),
    );
  }
}

// Text-font attributes for 'Sub-Text' of 'details-page'.
// ignore: cameL_case_types
class PlatForm extends StatelessWidget{
  final Game gamePlatform;
  PlatForm({
    @required this.gamePlatform
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            style: subtitleFont,
            children: <TextSpan>[
              TextSpan(text: "Platform: "),
              TextSpan(text: gamePlatform.platforms[0], style: contextFont),
              TextSpan(text: " | Genre: "),
              TextSpan(text: gamePlatform.platforms[1], style: contextFont),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class Progressions extends StatelessWidget{
  final Game gameProgressions;
  Progressions({
    @required this.gameProgressions
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          style: subtitleFont,
          children: <TextSpan>[
            TextSpan(text: "Progressions: "),
            TextSpan(text: "80%", style: contextFont),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Editor extends StatelessWidget{
  final Game gameEditor;
  Editor({
    @required this.gameEditor
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          style: subtitleFont,
          children: <TextSpan>[
            TextSpan(text: "Editor: "),
            TextSpan(text: "Editor Name", style: contextFont),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class ReleaseDate extends StatelessWidget{
  final Game gameReleaseDate;
  ReleaseDate({
    @required this.gameReleaseDate
  });
  @override
  Widget build(BuildContext context) {
    // To apply 'DateTime' and 'DateFormat', you should import the codes from
    // 'package:intl/intl.dart'.
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);

    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          style: subtitleFont,
          children: <TextSpan>[
            TextSpan(text: "ReleaseDate: "),
            TextSpan(text: "${formatted} ", style: contextFont),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Description extends StatelessWidget{
  final Game gameDescription;
  Description({
    @required this.gameDescription
  });

  @override
  Widget build(BuildContext context) {
    // If you apply the 'intl' module, you should type this commands as a code
    // 'import 'dart:ui' as ui;'
    // And put 'ui' in front of your 'TextDirection', or 'TextDecoration'.
    return Column(
      // Makes Column as Row.
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text(
        //   "Description: ",
        //   textDirection: ui.TextDirection.ltr,
        //   style: expanded_font_style_contents(),
        // ),
        RichText(
          text: TextSpan(
            style: subtitleFont,
            children: <TextSpan>[
              TextSpan(text: "Description: "),
            ],
          ),
        ),
        transparent_divider(),
        Column(
          children: <Widget> [
            RichText(
              text: TextSpan(
                style: subtitleFont,
                children: <TextSpan>[
                  TextSpan(
                      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget laoreet diam. Fusce vulputate justo tortor, vitae scelerisque elit molestie sit amet. Vestibulum ut purus sapien. Mauris vel sem vel felis ornare mollis. Phasellus luctus massa vitae pulvinar vestibulum. Vivamus tincidunt, mauris sit amet ultrices egestas, magna felis consectetur Add to my listligula, eu dignissim orci odio nec purus. Curabitur a porta tellus, vel efficitur ipsum. Aenean turpis purus, efficitur eget neque eu, placerat blandit ligula. Proin nec neque quam. ",
                      style: contextFont
                  ),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }
}

// ignore: camel_case_types
class ImageFonts extends StatelessWidget{
  final Game gameImageFonts;
  ImageFonts({
    @required this.gameImageFonts
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        transparent_divider(),
        RichText(
          text: TextSpan(
            style: subtitleFont,
            children: <TextSpan>[
              TextSpan(text: "Images: "),
            ],
          ),
        ),
      ],
    );
  }
}