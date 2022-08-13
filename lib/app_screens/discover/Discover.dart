import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/Details.dart';
import 'package:flutter_app/app_screens/main/Body.dart';
import 'package:flutter_app/app_screens/settings/SideMenu.dart';

import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Discover/DiscoverWidget.dart';

class DiscoverPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DiscoverBody();
  }
}

class DiscoverBody extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var itemList = [
      "Title_Details_1", "Title_Details_2", "Title_Details_3"
    ];
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        color: Colors.black12,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          transparent_divider(),
                      itemCount: itemList.length,
                      itemBuilder: (context, index) => DiscoverBodyDetails()
                  )
              ),
            ]
        ),
      ),
    );
  }
}


class DiscoverBodyDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        // It just going to show only one-Image if I convert this code as
        // height = MediaQuery.of(context).size.height
        height: 220,
        child: GestureDetector(
          onTap: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context){return DetailPage();})
            );
          },
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: DiscoverUp(),
              ),
              Expanded(
                flex: 1,
                child: DiscoverDown(),
              ),
            ],
          ),
        )

    );
  }
}