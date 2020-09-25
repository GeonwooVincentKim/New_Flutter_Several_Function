import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainWidgets.dart';


var itemList = [
  "IN_PROGRESS", "Line", "Title1", "Title2", "Title3",
  "COMPLETED", "Title4", "Title5", "Title6",
];
var list_up = ["Title1", "Title2", "Title3"];
var list_down = ["Title4", "Title5", "Title6", "Title7"];


// Main Scene that shows Body part separately.
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Import expanded_widgets class.
                ProgressText(),
              ],
            ),
            CustomDivider(color: Colors.black87),
            // Import buttons that combined Image and Text.
            // Body_Details(),
            SizedBox(height: 15),
            // Body_Details(),
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                // Import expanded_widgets_down class.
                CompletedText(),
              ],
            ),
            CustomDivider(color: Colors.black87),
            // Body_Details(),
            SizedBox(height: 15),
            // Body_Details(),
            SizedBox(height: 15),
            // Body_Details(),
            SizedBox(height: 15),
            // Body_Details(),
          ],
        ),
      ),
      // onTap: (){
      //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
      // },
    );
  }
}

// ignore: camel_case_types
class New_Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        alignment: Alignment.topLeft,
        color: Colors.black12,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Import expanded_widgets class.
                ProgressText(),
              ],
            ),
            CustomDivider(color: Colors.black87),
            // Import buttons that combined Image and Text.
            // For the codes that belows 'IN PROGRESS'.
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.transparent,
                  ),
                  itemCount: list_up.length,
                  itemBuilder: (context, index) => _buildBodyDetails()
              ),
            ),
            Row(
              children: <Widget>[
                // Import expanded_widgets_down class.
                CompletedText(),
              ],
            ),
            CustomDivider(color: Colors.black87),

            // For the codes that belows 'COMPILED'.
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.transparent,
                  ),
                  itemCount: list_down.length,
                  itemBuilder: (context, index) => _buildBodyDetails()
              ),
            ),
          ],
        ),
      ),
      // onTap: (){
      //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
      // },
    );
  }

  Widget _buildBodyDetails(){
    // return Body_Details();
  }
}

class Body_Expanded extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
          child: Container(
            height: 80,
            width: 100,
            padding: EdgeInsets.only(left: 10.0, top: 20.0),
            alignment: Alignment.topLeft,
            color: Colors.black12,
            child: Column(
              children: <Widget>[
                // ...list_up.map((item) {
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
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                      ),
                      itemCount: list_up.length,
                      itemBuilder: (context, index) => _buildBodyDetails()
                  ),
                ),
                Row(
                  children: <Widget>[
                    // Import expanded_widgets_down class.
                    CompletedText(),
                  ],
                ),
                CustomDivider(color: Colors.black87),

                // For the codes that belows 'COMPILED'.
                Expanded(
                  child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                      ),
                      itemCount: list_down.length,
                      itemBuilder: (context, index) => _buildBodyDetails()
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
  Widget _buildBodyDetails(){
    // return Body_Details();
  }
}
