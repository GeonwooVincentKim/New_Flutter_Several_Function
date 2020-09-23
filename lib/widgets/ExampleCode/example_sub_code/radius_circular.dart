import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
radius_circular_with_border(){
  Container(
      height: 100.0,
      color: Colors.transparent,
      child: new Container(
        decoration: new BoxDecoration(
          color: Colors.green,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
            bottomLeft: const Radius.circular(20.0),
            bottomRight: const Radius.circular(20.0),
          ),
        ),
        child: new Center(
          child: new Text("Hi modal sheet"),
        )
      ),
  );
}

// ignore: non_constant_identifier_names
radius_circular_with_no_image(){
  return Container(
    padding: EdgeInsets.only(left: 120.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.green,
    ),
    height: 70,
    child: Container(
      // child: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Image(
      //     height: 100,
      //     width: 100,
      //     image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
      //   ),
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: (
          Row(
            children: <Widget>[
              Text(
                'This is a Container',
                textScaleFactor: 2,
                style: TextStyle(color: Colors.black),
              ),
            ],
          )
      ),

    ),
  );
}
