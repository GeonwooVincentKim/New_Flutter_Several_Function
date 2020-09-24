import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/settings/settings_attribute/SettingText.dart';
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
      ),
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