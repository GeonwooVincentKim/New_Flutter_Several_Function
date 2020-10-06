import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainDetails.dart';

import 'package:flutter_app/model/game/game.dart';

/*
  Text-Attributes for Main
  1. expanded_widgets_up
  2. expanded_widgets_down
*/
// ignore: must_be_immutable
class ProgressText extends StatelessWidget{
  String title = '';

  ProgressText({
    @required this.title
  });

  Widget build(BuildContext context) {
    return Text(
      title.toUpperCase(),
      style: WidgetTextStyle(),
    );
  }
}

/*
  Image-Attributes for Main
  1. expanded_widgets_up_detail
  2. expanded_widgets_down_detail
*/
// ignore: camel_case_types
class ProceededImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      // height: MediaQuery.of(context).size.height,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
        ),
        child: Image(
          image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
          fit: BoxFit.fitHeight
        ),
      ),
    );
  }
}


// ignore: camel_case_types
class ProcessingImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 67,
      child: ClipRRect(
        child: Image(
          image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
          fit: BoxFit.fitHeight
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class ProcessingText extends StatelessWidget{

  final Game game;

  ProcessingText({
    @required this.game
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: WidgetTextAlign(game: game),
      ),
    );
  }
}

// ignore: camel_case_types
class ProceededText extends StatelessWidget{

  final Game game;

  ProceededText({
    @required this.game
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      // height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0)),
        color: Colors.black12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: WidgetTextAlign(game: game),
      ),
    );
  }
}
