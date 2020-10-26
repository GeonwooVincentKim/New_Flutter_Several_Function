import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/users.dart';
import 'package:flutter_app/app_screens/app_attributes/SettingsImage.dart';
import 'package:flutter_app/model/game/Users.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_form.dart';
import 'package:flutter_app/app_screens/SideMenu.dart';
import 'package:provider/provider.dart';


class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  User userModification;
  final TextEditingController userNameTextController = TextEditingController();
  final TextEditingController userEmailTextController = TextEditingController();
  final TextEditingController userAddressController = TextEditingController();
  final TextEditingController userImageTextController = TextEditingController();
  // @override
  // void initState(){
  //   setState((){
  //     userModification = Provider.of<UserProvider>(context, listen: false).userModify;
  //   });
  //   if(userModification == null){
  //     print("Pass me the Salt Please Man!!!");
  //     // final List<User> userInfoList = Provider.of<UserProvider>(context, listen: false).i
  //   }
  // }
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
          _buildEditButton(context)
        ], 
      )
    );
  }

  Widget _buildProfileImage(){
    return Column(
      children: <Widget>[
        Center(child: ProfileImageButton(),),
        SizedBox(height: defaultPadding),
        Center(
          child: Text(_getUserName(), style: TextStyle(fontSize: 24)),
        ),
      ]
    );
  }

  Widget _buildProfileInfo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DetailsForm(
          contentsTitle: "Local ID",
          contentsInfo: "8VxqWO9pRBTvpLGxFXquloo97X13",
          marginBottom: defaultPadding * 2,
        ),
        DetailsForm(
          contentsTitle: "Email",
          contentsInfo: _getEmail(),
          // contentsInfo: "test@test.com",
          // contentsInfo: userModification.email,
          marginBottom: defaultPadding * 2,
        ),
        DetailsForm(
          contentsTitle: "Address",
          contentsInfo: _getAddress(),
          marginBottom: defaultPadding * 2,
        ),
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
        onPressed: () {
          Navigator.pushNamed(context, "/modify");
        },
      ),
    );
  }

  String _getUserName(){
    return userNameTextController.text == null ||
      userNameTextController.text.trim().isEmpty ? 'YourName'
      : userNameTextController.text;
  }

  String _getEmail(){
    return userEmailTextController.text == null ||
      userEmailTextController.text.trim().isEmpty? 'text@naver.com'
      : userEmailTextController.text;
  }

  String _getImageLink(){
    return userImageTextController.text == null ||
      userImageTextController.text.trim().isEmpty? 'http://url.com'
      : userImageTextController.text;
  }

  String _getAddress(){
    return userAddressController.text == null ||
      userAddressController.text.trim().isEmpty? 'Seoul, Gangnam-gu, Samseong 2(i)-dong, Seolleung-ro 112-gil, 87 명인빌딩'
      : userAddressController.text;
  }

  // List<String> getPropensityNameList(List<Propensity> propensityList) {
  //   List<String> names = [];
  //   for (final item in propensityList) {
  //     names.add(item.name);
  //   }
  //   return names;
  // }

  // Widget _inputNicknameWidget() {
  //   return TextFormField(
  //     controller: nicknameTextController,
  //     style: TextStyle(fontSize: 14, color: Color(0xff333333)),
  //     decoration: textInputDecoration.copyWith(
  //       hintText: '펫님의 이름을 적어주세요',
  //     ),
  //   );
  // }
}
