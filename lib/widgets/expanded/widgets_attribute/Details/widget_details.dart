import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/BottomImage.dart';
import 'font_style/FontWidget.dart';


// For Text-font of 'details-page'.
// ignore: camel_case_types
class DetailsText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          MainFont(),
          transparent_divider(),
          SubFont1(),
          transparent_divider(),
          SubFont2(),
          transparent_divider(),
          SubFont3(),
          transparent_divider(),
          SubFont4(),
          transparent_divider(),
          SubFont5(),
          transparent_divider(),
          SubFont6(),
          transparent_divider(),
          // expanded_widgets_details_down_detail(),
        ],
      )
    );
  }
}


// For Image of 'details-page'.
// ignore: camel_case_types
class DetailsImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      child: FittedBox(
        child: Image(
            image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg")
        ),
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
              Expanded(
                child: Column(
                  children: <Widget>[
                    BottomImage(),
                  ]
                ),
              ),

              Expanded(
                child: Column(
                  children: <Widget>[
                    BottomImage(),
                  ]
                ),
              ),
            ]
          ),
          BottomDivider(),
          Row(
            children: [
              Expanded(
                child: Column(
                    children: <Widget>[
                      BottomImage(),
                    ]
                ),
              ),

              Expanded(
                child: Column(
                    children: <Widget>[
                      BottomImage(),
                    ]
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}