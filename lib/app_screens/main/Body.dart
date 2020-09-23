import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/main/BodyAttributes.dart';

import 'package:flutter_app/widgets/expanded/body_details.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/expanded_widgets.dart';

// Main Scene that shows Body part separately.
class Body extends StatefulWidget{
  final void Function(int) onAddButtonTapped;
  const Body({Key key, this.onAddButtonTapped}) : super(key: key);

  @override
  State<StatefulWidget> createState()
  => _BodyState();
}

class _BodyState extends State<Body>{
  @override
  Widget build(BuildContext context) {
    var listUp = ["Title1", "Title2", "Title3"];
    var listDown = ["Title4", "Title5", "Title6", "Title7"];

    return Center(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),

          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // ...list_up.map((item) {
                //
                // }).toList(),
                Row(
                  children: <Widget>[
                    // Import expanded_widgets class.
                    expanded_widgets_up(),
                  ],
                ),
                divider(),
                // Import buttons that combined Image and Text.
                // For the codes that belows 'IN PROGRESS'.
                Row(
                  children: <Widget>[
                    InProcessList()
                  ]
                ),

                transparent_divider(),

                Row(
                  children: <Widget>[
                    // Import expanded_widgets_down class.
                    expanded_widgets_down(),
                  ],
                ),
                divider(),

                // For the codes that belows 'COMPILED'.
                Row(
                  children: <Widget>[
                    CompletedList(),
                  ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}