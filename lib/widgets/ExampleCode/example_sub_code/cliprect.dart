import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
apply_without_cliprect() {
    // Trying to apply Center and ClipRect function.
    return Center(
    child: ClipRect(
      child: Container(
        alignment: Alignment.topLeft,
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    height: 100,
                    width: 100,
                    image: NetworkImage("https://www.gstatic.com/webp/gallery/1.jpg"),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "Title",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text("Author name"),

                    Divider(
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),

    )
    );
}

// ignore: non_constant_identifier_names
apply_with_cliprect(){
  return Center(
      child: ClipRect(
        child: Align(
          alignment: Alignment.topCenter,
          heightFactor: 0.5,
          child: Image.network("https://www.gstatic.com/webp/gallery/1.jpg"),
        ),
      )
  );
}