import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/attributes/SettingsAttribute.dart';
import 'package:flutter_app/app_screens/settings/dialog/Dialog.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_block.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/app_screens/SideMenu.dart';


class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBarSettings(),
      backgroundColor: backgroundColor,
      body: _buildSettingsBody(context),
    );
  }

  AppBar _buildAppBarSettings(){
    return AppBar(
      title: Text("SETTINGS"),
      backgroundColor: backgroundColor,
      centerTitle: true,
    );
  }

  Widget _buildSettingsBody(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: defaultPadding),
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
            color: linkColor,
          )
        ),
        color: Color(0xff0783d2),
        child: Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Text(
            "EDIT",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            )
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
// class Settings extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: SideMenu(),
//       appBar: AppBar(
//         backgroundColor: Colors.black87,
//         title: Text("SETTINGS"),
//         centerTitle: true,
//       ),
//       body: SettingsBody(),
//       bottomNavigationBar: BottomAppBar(
//         // shape: CircularNotchedRectangle(),
//         color: Colors.black87,
//         // notchMargin: 2.0,
//         clipBehavior: Clip.antiAlias,
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 20),
//           child: RichText(
//               textAlign: TextAlign.center,
//               text: TextSpan(
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 25,
//                   ),
//                   children: <TextSpan>[
//                     TextSpan(text: "Modify"),
//                   ]
//               )
//           ),
//         )
//       ),
//     );
//   }
// }


// class SettingsBody extends StatelessWidget{
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//         alignment: Alignment.topLeft,
//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Center(
//                 // If I use FlatButton, it shows AlertDialog overflows
//                 // So I have to use GestureDetector.
//                 child: GestureDetector(
//                   onTap: () {
//                     showAlertDialog(context);
//                   },
//                   child: ImageAttribute(),
//                 ),
//               ),
//               transparent_divider(),
//               Text(
//                 "John Doe",
//                 textScaleFactor: 1.5,
//               ),
//               Center(
//                 child: TextAttribute(),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }