import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/myfavorites/MyFavorites.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Details/font_style/FontStyle.dart';

// Dialog for 'Setting' Application
void showAlertDialog(BuildContext context) async {
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String result = await showDialog(
    context: context,
    // barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Add to my List'),
        // content: TextField(
        //   controller: _textFieldContrller
        // ),
        // content: Text("Do you wish add to your List??"),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context){return MyFavoritesPage();})
              // );
            },
          ),
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );
}

// 'ADD TO MY LIST' Dialog.
// void showAddListDialog(BuildContext context) async{
//   final scaffoldKey = new GlobalKey<ScaffoldState>();
//   final _procedureController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//   // final GlobalKey<Game> _key = GlobalKey();

//   return showDialog(
//     context: context,
//     // barrierDismissible: false, // user must tap button!
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text('ADD TO MY LIST', textAlign: TextAlign.center),
//         titlePadding: EdgeInsets.symmetric(vertical: 20),
//         contentPadding: EdgeInsets.zero,
//         content: Container(
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 25),
//                 child: Column(
//                   children: [
//                     Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
//                     // CustomDivider(color: Colors.transparent),
//                     transparent_divider(),
//                     Row(
//                         children: [
//                           Expanded(
//                             child: Text("Progress: ", style: TextStyle(
//                               fontWeight: FontWeight.w300,
//                             )),
//                           ),

//                           Expanded(
//                             child: TextFormField(
//                               textAlign: TextAlign.center,
//                               decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: BorderSide(color: Colors.black87, width: 1.5),
//                                   ),
//                                   hintText: '10%'),
//                               controller: _procedureController,
//                               keyboardType: TextInputType.number,
//                               validator: (value) {
//                                 if(value.trim().isEmpty){
//                                   return "Please Input your Procedure-Number Value.";
//                                 }
//                                 return null;
//                               }
//                             ),
//                           ),
//                         ]
//                     ),
//                   ]
//                 ),
//               ),
//               transparent_divider(),
//               InkWell(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(vertical: 20),
//                   // padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                   ),
//                   child: Text(
//                     "+ Add to my List",
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 // onTap: null,
//                 onTap: (){
//                   if(_formKey.currentState.validate()){
//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     // builder: (context) {
//                     //     //   return MyFavoritesPage();
//                     //     // }
//                     //     builder: (context) => MyFavoritesPage(
//                     //       // int.parse(_procedureController.text.trim())
//                     //     ),
//                     //   )
//                     // );
//                   }
//                   showAlertDialog(context);
//                   // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
//                 }
//               ),
//               // OutlineButton(
//               //   textColor: Colors.white,
//               //   highlightedBorderColor: Colors.white,
//               //   borderSide: BorderSide(
//               //     color: Colors.white, width: 0.8, style: BorderStyle.solid),
//               //     onPressed: MyFavoritesPage,
//               //   ),
//               //
//               // ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
