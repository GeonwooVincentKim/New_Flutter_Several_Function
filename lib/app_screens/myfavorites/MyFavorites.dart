import 'package:flutter/material.dart';

class FavoriteImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          "https://www.gstatic.com/webp/gallery/1.jpg",
          fit: BoxFit.fitWidth
      ),
    );
  }
}

class FavoriteText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: Colors.black12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
              'TITLE OF THE GAME',
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "icomoon",
                fontSize: 8,
              )
          ),
        ],
      ),
    );
  }
}
