import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/details_attributes/DetailsBody.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:flutter_app/shared/style.dart';
import 'package:flutter_app/widgets/Commons/details_block.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/font/font_style/FontStyle.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';

class DetailPage extends StatefulWidget {
  final String gameId;
  DetailPage({
    this.gameId
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Game> listProgression = [];
  Game selectedGame;
  double _progression = 0.0;

  @override
  void initState(){
    setState((){
      selectedGame = Provider.of<Products>(context, listen: false).selectedGame;
    });

    if(selectedGame == null) {
      print("Passing..??");
      final List<Game> listGame = Provider.of<Products>(context, listen: false).items.toList();
      selectedGame = listGame.firstWhere((game) => game.id == widget.gameId);
    }

    super.initState();
  }

  Widget _buildDetailsAppBar(){
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(selectedGame.title),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            IconMoon.iedit,
            color: Colors.white,
          ),
          onPressed: (){
            // showAddListDialog(context);
          },
        ),
      ],
    );
  }

  Widget _buildDetailsText(){
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: <Widget>[
          Text(
            selectedGame.title.toLowerCase(),
            style: mainFont,
          ),
          SizedBox(height: defaultPadding),
          DetailsBlock(
            label: "Platforms: ",
            info: selectedGame.platforms[0],
          ),
          DetailsBlock(
            label: "Genres: ",
            info: selectedGame.genres[0],
          ),
          DetailsBlock(
            label: "Progressions: ",
            info: (selectedGame.progression).toString(),
          ),
        ]
      )
    );
  }

  Widget _buildDetailsBody(){
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(

          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildDetailsAppBar(),
      body: _buildDetailsBody(),
    );
  }
}
// class DetailPage extends StatefulWidget {

//   final String gameId;

//   DetailPage({
//     this.gameId
//   });

//   @override
//   _DetailPageState createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   List<Game> listProgression = [];
//   Game selectedGame;
//   double _progression = 0.0;

//   final _formKey = GlobalKey<FormState>();
  
//   @override
//   void initState() {
//     setState(() {
//       selectedGame = Provider.of<Products>(context, listen: false).selectedGame;
//     });

//     if(selectedGame == null) {
//       print("Passing..??");
//       final List<Game> listGame = Provider.of<Products>(context, listen: false).items.toList();
//       selectedGame = listGame.firstWhere((game) => game.id == widget.gameId);
//     }
  
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black87,
//         title: Text(selectedGame.title),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(
//               IconMoon.iedit,
//               color: Colors.white,
//             ),
//             onPressed: (){
//               showAddListDialog(context);
//             }
//           ),
//         ],
//       ),
//       body: DetailBody(gameDetailBody: selectedGame),
//     );
//   }

//   // 'ADD TO MY LIST' Dialog.
//   void showAddListDialog(BuildContext context) async{
//     final _procedureController = TextEditingController();

//     return showDialog(
//       context: context,
//       // barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('ADD TO MY LIST', textAlign: TextAlign.center),
//           titlePadding: EdgeInsets.symmetric(vertical: 20),
//           contentPadding: EdgeInsets.zero,
//           content: Container(
//             width: MediaQuery.of(context).size.width,
//             child: Form(
//               key: _formKey,
//               child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25),
//                   child: Column(
//                       children: [
//                         Text("Are you sure you want to add TITLE OF THE GAME to your list of game?"),
//                         transparent_divider(),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: Text("Progress: ", style: TextStyle(
//                                 fontWeight: FontWeight.w300,
//                               )),
//                             ),

//                             Expanded(
//                               child: TextFormField(
//                                 textAlign: TextAlign.center,
//                                 decoration: InputDecoration(
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(color: Colors.black87, width: 1.5),
//                                     ),
//                                     hintText: '10%'),
//                                 controller: _procedureController,
//                                 keyboardType: TextInputType.number,
//                                 onSaved: (progression) {
//                                   print('progression');
//                                   setState(() {
//                                     _progression = double.parse(progression);
//                                     print(_progression);
//                                   });
//                                   print(_progression);
                                  
//                                 },
//                                 validator: (value) {
//                                   if(value.isEmpty){
//                                     return "Please Input your Procedure-Number Value.";
//                                   }
//                                   return null;
//                                 }
//                               ),
//                             ),
//                           ]
//                         ),
//                       ]
//                     ),
//                   ),
//                   transparent_divider(),
//                   InkWell(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(vertical: 20),
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                       ),
//                       child: Text(
//                         "+ Add to my List",
//                         style: TextStyle(color: Colors.white),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     onTap: () => _submitForm(context)
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _submitForm (BuildContext context) {
//     if(!_formKey.currentState.validate())
//       return;

//     _formKey.currentState.save();
    
//     Provider.of<Products>(context).addGameUserList(selectedGame);
//     Provider.of<Products>(context).changeProgression(selectedGame, _progression);
//     Provider.of<Products>(context).deleteGame(selectedGame);
    
//     Navigator.of(context).pop();
//   }
// }
