import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/settings.dart';
import 'package:flutter_app/app_screens/settings/settings_attribute/SettingText.dart';
// import 'file:///E:/flutter_test_project/flutter_app/lib/app_screens/settings/SideMenu.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
// import '../SideMenu.dart';
import 'package:flutter_app/app_screens/settings/SideMenu.dart';
import 'SettingImage.dart';


class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("SETTINGS"),
        centerTitle: true,
      ),
      body: SettingsBody(),
      bottomNavigationBar: BottomAppBar(
        // shape: CircularNotchedRectangle(),
        color: Colors.black87,
        // notchMargin: 2.0,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "Modify"),
                  ]
              )
          ),
        )

        // child: Text(
        //   "HI", textAlign: TextAlign.center,
        //   style: TextStyle(fontFamily: 'icomoon', fontSize: 25, color: Colors.white)
        // ),
        // child: BottomAppBar(
        //   // BottomNavigationBarItem(
        //   //     icon: Icon(Icons.cancel), title: Text("Title")),
        //   // BottomNavigationBarItem(
        //   //     icon: Icon(Icons.cancel), title: Text("Title")),
        // ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.black87,
      //   child: new Row(
      //     // mainAxisSize: MainAxisSize.max,
      //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       // Container(
      //       //   height: 20,
      //       //   child: GestureDetector(
      //       //     onTap: (){
      //       //
      //       //     },
      //       //     child: RichText(
      //       //       text: TextSpan(
      //       //         style: TextStyle(
      //       //           color: Colors.white,
      //       //           fontSize: 25,
      //       //         ),
      //       //         children: <TextSpan>[
      //       //           TextSpan(text: "HI"),
      //       //         ]
      //       //       )
      //       //     ),
      //       //   )
      //       // )
      //       //IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      //       // RichText(
      //       //   text: TextSpan(
      //       //     style: TextStyle(
      //       //       color: Colors.white,
      //       //       fontSize: 25,
      //       //     ),
      //       //     children: <TextSpan>[
      //       //       TextSpan(text: "HI"),
      //       //     ]
      //       //   ),
      //       // ),
      //     ]
      //   ),
      // ),
      // body: Body_Divide_Test(),
    );
  }
}


class SettingsBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: ImageAttribute(),
              ),
              transparent_divider(),
              Text(
                "John Doe",
                textScaleFactor: 1.5,
              ),
              Center(
                child: TextAttribute(),
              ),
            ],
          ),
        ),

      ),
    );
  }
}