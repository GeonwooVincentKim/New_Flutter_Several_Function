import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
basic_widgets_form(){
  return Container(
    // padding: EdgeInsets.only(left: 9.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 70,
      child:Row(
        children: [
          Expanded(
              flex: 1,
              child:
              Container(
                // child: Image.asset(
                //     "images/hummingbird.png"
                // ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                  child: Image(
                      image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg")
                  ),
                ),
              ) ),
          Expanded(
            flex: 3,
            child: Container(
              height: 70,
              padding: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: Colors.amber,
              ),
              child: (Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        // padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Title',
                          textScaleFactor: 2,
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Hi"),
                      ),
                    ],
                  ),
                ],
              )),
            ),
          )
        ],)
  );
}