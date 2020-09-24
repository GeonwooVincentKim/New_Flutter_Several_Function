import 'package:flutter/material.dart';

// ignore: camel_case_types
class DiscoverUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 150,
      padding: EdgeInsets.only(right: 1.0, top: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),

        // Make it fits to the box.
        child: FittedBox(
          child: Image(
            image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg")
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}


// ignore: camel_case_types
class DiscoverDown extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 50,
      padding: EdgeInsets.only(right: 10.0, top: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0)),
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'TITLE OF THE GAME',
            textScaleFactor: 2,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontFamily: "icomoon",
              fontSize: 10,
            ),
          ),
          Text(
            "Platform: PS4 | Genre : RPG",
            style: TextStyle(
              color: Colors.black26,
              fontFamily: "icomoon",
            ),
          ),
        ],
      ),
    );
  }

}