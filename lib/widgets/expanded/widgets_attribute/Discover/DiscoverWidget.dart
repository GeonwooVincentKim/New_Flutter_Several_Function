import 'package:flutter/material.dart';
import 'package:flutter_app/model/game/game.dart';

// ignore: camel_case_types
class DiscoverUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      width: 365,
      height: 150,
      padding: EdgeInsets.only(right: 1.0, top: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),

        // Make it fits to the box.
        child: Image.network(
            "https://www.gstatic.com/webp/gallery/1.jpg",
            fit: BoxFit.fitWidth
        ),
      ),
    );
  }
}


// ignore: camel_case_types
class DiscoverDown extends StatelessWidget{
  final Game gameContents;

  DiscoverDown({
    @required this.gameContents
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      width: 365,
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 5.0),
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
            gameContents.title,
            // 'TITLE OF THE GAME',
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
            "Platform: " + gameContents.platforms[0],
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