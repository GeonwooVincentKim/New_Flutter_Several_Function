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

// class Settings extends StatefulWidget{
//   final String title;
//   Settings({Key key, this.title}): super(key: key);
//   @override
//   State<StatefulWidget> createState()
//     => _SettingsState();
// }
// class _SettingsState extends State<Settings>{
//   String _title;
//   int _selectedPage = 0;
//   List<Widget>pageList = List<Widget>();
//
//   @override
//   void initState(){
//     pageList.add(Settings());
//   }
// }

// class Settings extends StatelessWidget{
//   int _selectedPage = 0;
//
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
//       // bottomNavigationBar: BottomNavigationBar(
//       //   type: BottomNavigationBarType.fixed,
//       //   selectedItemColor: Colors.white,
//       //   iconSize: 50,
//       // ),
//       body: IndexedStack(
//         index: _selectedPage,
//         children: pageList,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white,
//         onTap: _bottomTapped,
//         iconSize: 50,
//         items: const<BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(IconMoon.igamepad),
//             title: Text('My Games'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(IconMoon.isearch),
//             title: Text('Discover'),
//           ),
//         ],
//         // currentIndex: _selectedIndex,
//         // selectedFontSize: 15,
//         currentIndex: _selectedPage,
//         backgroundColor: Colors.black87,
//       ),
//     );
//
//     List<BottomNavigationBarItem> buildBottomNavBarItems(){
//       return [
//         BottomNavigationBarItem(
//           icon: Icon(IconMoon.igamepad),
//           title: Text('My Games'),
//         ),
//       ];
//     }
//
//     void _bottomTapped(int index){
//       setState((){
//         _selectedPage = index;
//         pageController.animateToPage(index, duration: Duration(milliseconds: 700), curve: Curves.ease);
//         switch(index){
//           case 0: {
//             //Navigator.pushNamed(context, '/home');
//             // onAddButtonTapped(1);
//             _title="MY GAMES";
//             break;
//           }
//           case 1:{
//             // Navigator.pushNamed(context, '/discover');
//             // onAddButtonTapped(1);
//             _title="DISCOVER";
//             break;
//           }
//         }
//       });
//     }
//   }
// }
//
//
// class SettingsBody extends StatelessWidget{
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
//                 child: ImageAttribute(),
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
//
//       ),
//     );
//   }
// }

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
        color: Colors.black87,
        child: new Row(
          // mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            //IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                children: <TextSpan>[
                  TextSpan(text: "HI"),
                ]
              ),
            ),
            /*Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("Hi", style: TextStyle(color: Colors.white, fontSize: 25)),
              //
            ),*/
            // Text("Button", textAlign: TextAlign.center),
          ]
        ),
      ),
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