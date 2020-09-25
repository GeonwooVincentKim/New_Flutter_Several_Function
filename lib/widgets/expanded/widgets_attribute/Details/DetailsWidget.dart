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
          PlatForm(),
          transparent_divider(),
          Progressions(),
          transparent_divider(),
          Editor(),
          transparent_divider(),
          ReleaseDate(),
          transparent_divider(),
          Description(),
          transparent_divider(),
          ImageFonts(),
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
      child: Image.network(
        "https://www.gstatic.com/webp/gallery/1.jpg",
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
