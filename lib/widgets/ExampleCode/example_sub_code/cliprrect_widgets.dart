import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
no_clip_r_rect_widgets(){
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
                child: Image(
                  image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
                ),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  color: Colors.black26,
                ),
              ) ),
          Expanded(
            flex: 3,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: Colors.amber,
              ),
              child: (Column(
                children: <Widget>[
                  Text(
                    'Title',
                    textScaleFactor: 2,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Text("Hi"),
                ],
              )),
            ),
          )
        ],));
}

// ignore: non_constant_identifier_names
clip_r_rect_widgets(){
  Container(
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: Colors.amber,
              ),
              child: (Column(
                children: <Widget>[
                  Text(
                    'Title',
                    textScaleFactor: 2,
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Text("Hi"),
                ],
              )),
            ),
          )
        ],));
}

// ignore: non_constant_identifier_names
clip_r_rect_widgets_and_images(){
  return Container(
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
                child: Image.asset(
                    "images/hummingbird.png"
                ),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0)),
                  color: Colors.black26,
                ),
              ) ),
          Expanded(
            flex: 3,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                color: Colors.amber,
              ),
              child: (Row(
                children: <Widget>[
                  Text(

                    'This is a Container',
                    textScaleFactor: 2,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
            ),
          )
        ],)
  );
}
