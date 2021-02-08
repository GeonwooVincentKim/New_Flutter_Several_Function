import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/users.dart';
import 'package:flutter_app/model/Users.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_form.dart';
import 'package:flutter_app/app_screens/Home/SideMenu.dart';
import 'package:provider/provider.dart';

import 'package:flutter_app/app_screens/attributes/SettingsImage.dart';


class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Future<BuildContext> 

  AppBar _buildAppBarSettings(){
    return AppBar(
      title: Text("SETTINGS"),
      backgroundColor: appBarColor,
      centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: _buildAppBarSettings(),
      body: _buildSettingsBody(context),
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
            child: Consumer<UserProvider>(
              builder: (ctx, userInfo, child){
                final User user = userInfo.userModify;
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      // _buildProfileImage(user),
                      Center(child: ProfileImageButton()),
                      _buildUserName(user),
                      SizedBox(height: defaultPadding * 4),
                      _buildProfileInfo(user),
                    ],
                  ),
                );
              }
            )
          ),
          _buildEditButton(context)
        ], 
      )
    );
  }

  Widget _buildUserName(User user){
    return Container(
      child: Text(user.username, style: TextStyle(fontSize: 24)),
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
    );
  }

  // Widget _buildProfileImage(User user){
  //   return Center(child: ProfileImageButton(),);
  //   // return Stack(
  //   //   children: <Widget>[
  //   //     Center(child: ProfileImageButton(),),
  //   //     SizedBox(height: defaultPadding),
  //   //   ]
  //   // );
  // }


  Widget _buildProfileInfo(User user){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DetailsForm(contentsTitle: "Local ID", contentsInfo: user.id, marginBottom: defaultPadding * 2,),
        DetailsForm(contentsTitle: "Email", contentsInfo: user.email, marginBottom: defaultPadding * 2,),
        DetailsForm(contentsTitle: "Address", contentsInfo: user.userAddress, marginBottom: defaultPadding * 2,),
      ]
    );
  }

  Widget _buildEditButton(BuildContext context){
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      
      child: FlatButton(
        shape: ContinuousRectangleBorder(side: BorderSide(color: lineColor)),
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Text("EDIT", style: settingsMainFont),
        ),
        onPressed: () { Navigator.pushNamed(context, "/settings/modify"); },
      ),
    );
  }
}
