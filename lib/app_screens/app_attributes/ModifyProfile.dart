import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/users.dart';
import 'package:flutter_app/app_screens/SideMenu.dart';
import 'package:flutter_app/model/game/Users.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_form.dart';
import 'package:flutter_app/widgets/DetailsPage/label.dart';
import 'package:provider/provider.dart';

import 'package:flutter_app/model/game/Users.dart';


class ModifyProfile extends StatefulWidget {
  @override
  _ModifyProfileState createState() => _ModifyProfileState();
}

class _ModifyProfileState extends State<ModifyProfile> {
  final _formModifyKey = GlobalKey<FormState>();
  final TextEditingController userNameTextController = TextEditingController();
  
  User user;
  String _userName = 'UserName';
  String _email = 'dddd@gmail.com';
  String _imageURL = 'https://www.naver.com';
  String _address = 'SK Seongsu V1 CENTER I, Seongsu-dong 2-ga, Seongdong-du, Seoul, S.Korea';
  bool _isInit = false;

  final Map<String, dynamic> _formUserData = {
    'username': '',
    'email': '',
    'imageURL': '',
    'Address': '',
    // ''
  };


  Widget _buildModifyAppBar(){
    return AppBar(
      backgroundColor: appBarColor,
      title: Text("MODIFY PROFILE"),
      centerTitle: true,
    );
  }

  Widget _buildModifyBody(){
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      color: backgroundColor,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Padding(
            // padding: EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
            padding: EdgeInsets.all(defaultPadding * 2),
            child: SingleChildScrollView(
              child: Consumer<UserProvider>(
                builder: (ctx, user, _){
                  final User userList = Provider.of<UserProvider>(context, listen: false).userModify;
                  // final List<User> userList = user.userInfoList;
                  if(user != null && !_isInit){
                    print("Initialize..");
                    _formUserData['username'] = userList;
                    _formUserData['email'] = userList;
                    _formUserData['imageURL'] = userList;
                    _formUserData['Address'] = userList;
                  }
                  return Form(
                    key: _formModifyKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Label(label: "UserName"),
                        // _buildModifyText(),
                        _buildUserNameModify(),
                        // Label(label: "Email"),
                        // _buildModifyText(),
                        // _buildUserEmailModify(),
                        // Label(label: "Image URL"),
                        // _buildModifyText(),
                        // // _buildUserImageURLModify(),
                        // Label(label: "Address"),
                        // _buildModifyText(),
                        // _buildUserAddressModify(),
                      ],
                    )
                  );
                }
              )
              
            )
          ),
          _buildModifyForm(),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildModifyAppBar(),
      body: _buildModifyBody(),
    );
  }

  Widget _buildUserNameModify(){
    return Column(
      children: <Widget>[
         TextFormField(
          // controller: SideMenu().userNameTextController,
          validator: (value){
            if(value.isEmpty) {return 'Please enter some text';}
            return null;
          },
          onChanged: (value){
            _formModifyKey.currentState.validate();
          },
          onSaved: (value){
            print("User Edition!!!!!");
              setState(() {
                _formUserData['username'] = value;
                _formModifyKey.currentState.save();
                
              });
            print(value);
          },
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }

  Widget _buildModifyForm(){
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      
      child: FlatButton(
        shape: ContinuousRectangleBorder(side: BorderSide(color: lineColor)),
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Text("MODIFY", style: settingsMainFont),
        ),
        onPressed: () => _submitForm(context)
      ),
    );
  }



  void _submitForm(BuildContext context){
    if(!_formModifyKey.currentState.validate()) return;
    _formModifyKey.currentState.save();
    
    Provider.of<UserProvider>(context).changeUserInformation(user);
    print(user.userName);
    Navigator.of(context).pop();
  }
}
