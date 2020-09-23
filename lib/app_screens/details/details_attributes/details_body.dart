import 'package:flutter/material.dart';
import 'details_body_details.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("GAME TITLE"),
        centerTitle: true,
      ),
      body: DetailBody(),
    );
  }
}


class DetailBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: ImageAttribute(),
              ),

              // I should convert as CircularProgressIndicator function.
              ProgressBar(),
              Center(
                child: TextAttribute(),
              ),
              Center(
                child: BottomImage(),
              ),
            ],
          ),
        ),

      ),
    );
  }
}


