import 'package:flutter/material.dart';
import 'package:flutter_app/Provider/users.dart';
import 'package:flutter_app/model/game/Users.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_form.dart';
import 'package:flutter_app/widgets/DetailsPage/label.dart';
import 'package:provider/provider.dart';


class ModifyProfile extends StatefulWidget {
  @override
  _ModifyProfileState createState() => _ModifyProfileState();
}

class _ModifyProfileState extends State<ModifyProfile> {
  final _formModifyKey = GlobalKey<FormState>();
  
  User user;
  String _userName = 'UserName';
  String _email = 'dddd@gmail.com';
  String _imageURL = 'https://www.naver.com';
  String _address = 'SK Seongsu V1 CENTER I, Seongsu-dong 2-ga, Seongdong-du, Seoul, S.Korea';

  final Map<String, dynamic> _formData = {
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
              child: Form(
                key: _formModifyKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label(label: "UserName"),
                    _buildModifyText(),
                    Label(label: "Email"),
                    _buildModifyText(),
                    Label(label: "Image URL"),
                    _buildModifyText(),
                    Label(label: "Address"),
                    _buildModifyText(),
                  ],
                )
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
        
      ],
    );
  }

  Widget _buildModifyText(){
    return Column(
      children: <Widget>[
        TextFormField(
          validator: (value){
            if(value.isEmpty) {return 'Please enter some text';}
            return null;
          },
          onSaved: (value){
            print("User Edition!!!!!");
            setState((){
              _userName = value;
              print(_userName);
            });
            print(_userName);
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
    
    Provider.of<UserProvider>(context).changeUserInfo(user, _userName, _email, _imageURL, _address);
    print(_userName);
    print(_email);
    print(_imageURL);
    print(_address);
    Navigator.of(context).pop();
  }
}
