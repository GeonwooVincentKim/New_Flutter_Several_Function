import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/SideMenu.dart';
import 'package:flutter_app/app_screens/attributes/SettingsAttribute.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_block.dart';


class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: _buildAppBarSettings(),
      body: _buildSettingsBody(context),
    );
  }

  AppBar _buildAppBarSettings(){
    return AppBar(
      title: Text("SETTINGS"),
      backgroundColor: appBarColor,
      centerTitle: true,
    );
  }

  Widget _buildSettingsBody(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      color: backgroundColor,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: defaultPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildProfileImage(),
                  SizedBox(height: defaultPadding * 4),
                  _buildProfileInfo(),
                ],
              ),
            )
          ),
          _buildEditButton()
        ], 
      )
    );
  }

  Widget _buildProfileImage(){
    return Column(
      children: <Widget>[
        Center(
          child: ProfileImageButton(),
        ),
        SizedBox(height: defaultPadding),
        Center(
          child: Text(
            "UserName",
            style: TextStyle(fontSize: 24)
          ),
        ),
      ]
    );
  }

  Widget _buildProfileInfo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DetailsBlock(
          label: "Local ID",
          info: "8VxqWO9pRBTvpLGxFXquloo97X13",
          marginBottom: defaultPadding * 2,
        ),
        DetailsBlock(
          label: "Email",
          info: "test@test.com",
          marginBottom: defaultPadding * 2,
        ),
        DetailsBlock(
          label: "Address",
          info: "Seoul, Gangnam-gu, Samseong 2(i)-dong, Seolleung-ro 112-gil, 87 명인빌딩",
          marginBottom: defaultPadding * 2,
        ),
      ]
    );
  }

  Widget _buildEditButton(){
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      
      child: FlatButton(
        shape: ContinuousRectangleBorder(
          side: BorderSide(
            color: lineColor,
          )
        ),
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Text(
            "EDIT",
            style: settingsMainFont
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
