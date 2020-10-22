import 'package:flutter/material.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_form.dart';


class ModifyProfile extends StatefulWidget {
  @override
  _ModifyProfileState createState() => _ModifyProfileState();
}

class _ModifyProfileState extends State<ModifyProfile> {
  final _formKey = GlobalKey<FormState>();

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
            padding: EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
            child: SingleChildScrollView(
              child: _buildProfileInfo(),
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
        onPressed: () {
          Navigator.pushNamed(context, "/settings");
        },
      ),
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
          contentsInfo: "test@test.com",
          marginBottom: defaultPadding * 2,
        ),
        DetailsForm(
          contentsTitle: "Address",
          contentsInfo: "Seoul, Gangnam-gu, Samseong 2(i)-dong, Seolleung-ro 112-gil, 87 명인빌딩",
          marginBottom: defaultPadding * 2,
        ),
      ]
    );
  }
}
