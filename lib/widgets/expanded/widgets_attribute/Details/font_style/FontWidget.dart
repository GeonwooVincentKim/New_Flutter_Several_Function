import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';
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
              TextSpan(text: gamePlatform.genres[0], style: contextFont),
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
            // TextSpan(text: "%", (p)) 
            TextSpan(text: (gameProgressions.progression).toString(), style: contextFont),
            TextSpan(text: "%", style: contextFont),
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
            TextSpan(text: gameEditor.publisher, style: contextFont),
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
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          style: subtitleFont,
          children: <TextSpan>[
            TextSpan(text: "ReleaseDate: "),
            TextSpan(text: gameReleaseDate.releaseDate, style: contextFont),
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
                      text: gameDescription.description,
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