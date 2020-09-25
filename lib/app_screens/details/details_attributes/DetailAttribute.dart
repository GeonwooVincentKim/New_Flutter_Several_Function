import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavorites.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/widget_details.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';


// Image-Attributes that is below in the Detail-Page part.
class imageAttribute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        Container(
          height: 210,
          child: Column(
              children: <Widget>[
                Expanded(
                  child: DetailsImage(),
                ),
              ]
          ),
        ),
       Align(
          alignment: Alignment.topRight,
          child: IconButton(
              icon: Icon(
                  IconMoon.istarfull
              ),
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context){return MyFavoritesPage();})
                );
              }
          ),
        )
      ]
    );
  }
}

// Progress-Bar-Attributes that is belows in the Detail-Page part.
class progressBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LinearProgressIndicator(
          minHeight: 10,
          backgroundColor: Colors.grey,
          value: 0.8,
        ),
      ],
    );
  }

}

// Text-Attributes that is belows in the Detail-Page part.
class TextAttribute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
        padding: EdgeInsets.only(left: 10.0, top: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Title
                DetailsText(),
              ],
            ),
          ],
        )
    );
  }
}

// BottomImage-Attributes that is belows in the Detail-Page part.
class BottomImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 15.0),
      child: Column(
        children: <Widget>[
          DetailsBottomImages(),
        ]
      ),
    );
  }

}