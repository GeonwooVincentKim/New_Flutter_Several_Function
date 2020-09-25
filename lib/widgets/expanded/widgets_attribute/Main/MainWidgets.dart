import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainDetails.dart';

/*
  Text-Attributes for Main
  1. expanded_widgets_up
  2. expanded_widgets_down
*/
// ignore: non_constant_identifier_names, camel_case_types
class ProgressText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // If I don't use this,
    return Text(
      "IN PROGRESS",
      style: WidgetTextStyle(),
    );
  }
}


// ignore: camel_case_types
class ComplitedText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text(
      "COMPLETED",
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
      height: 67,
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
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: WidgetTextAlign(),
      ),
    );
  }
}

// ignore: camel_case_types
class ProceededText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0)),
        color: Colors.black12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: WidgetTextAlign(),
      ),
    );
  }
}
