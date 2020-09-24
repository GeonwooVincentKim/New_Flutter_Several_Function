import 'package:flutter/material.dart';

import 'MainWidgets.dart';

// ignore: camel_case_types
class ProcessingList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              // For Top-part Widgets, the Main
              child: ProcessingImage()
          ),

          Expanded(
              flex: 3,
              // For Below-part Widgets, the Main
              child: ProcessingText()
          )
        ],
      ),
    );
  }

}


// ignore: camel_case_types
class ProceededList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              // For Top-part Widgets, the Main
              child: ProceededImage()
          ),

          Expanded(
              flex: 3,
              // For Below-part Widgets, the Main
              child: ProceededText()
          )
        ],
      ),
    );
  }
}