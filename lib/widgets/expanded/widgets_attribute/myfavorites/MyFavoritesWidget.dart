import 'package:flutter/material.dart';

class FavoriteImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
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

class FavoriteText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      // padding: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0)),
        color: Colors.black12,
      ),
    );
  }

}