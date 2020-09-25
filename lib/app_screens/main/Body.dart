import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/main/main_attributes/BodyAttributes.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainWidgets.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ...listUp.map((item) {
              //
              // }).toList(),
              Row(
                children: <Widget>[
                  // Import expanded_widgets class.
                  ProgressText(),
                ],
              ),
              CustomDivider(color: Colors.black87),
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
                  ComplitedText(),
                ],
              ),
              CustomDivider(color: Colors.black87),

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
    );
  }
}