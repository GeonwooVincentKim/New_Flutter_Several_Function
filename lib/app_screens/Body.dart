import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/main/main_attributes/BodyAttributes.dart';
import 'package:flutter_app/app_screens/main/main_attributes/HomeAppBar.dart';
import 'package:flutter_app/provider/Provide.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
import 'package:flutter_app/shared/layout.dart';
import 'package:flutter_app/widgets/Home/list_tiles_with_title.dart';
import 'package:flutter_app/widgets/expanded/divider.dart';
import 'package:flutter_app/widgets/expanded/widgets_attribute/Main/MainWidgets.dart';
import 'package:flutter_app/model/game/game.dart';
import 'package:provider/provider.dart';


// class Body extends StatefulWidget {
//   final int pageIndex;
//   final Function bottomTapped;

//   const Body({Key key, this.pageIndex = 0, this.bottomTapped});
//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   List<Game> inProgressList = [], completedList = [];

//   @override
//   void initState(){
//     final List<Game> listGame = Provider.of<Products> (context, listen: false).userList;
//   }

//   Widget _buildBody(){
//     // inProgressList  = lis

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }
// Main Scene that shows Body part separately.
class Body extends StatefulWidget{
  final void Function(int) onBottomTapped;
  // final int pageIndex;

  // const Body({Key key, this.pageIndex=0}) : super(key: key);
  const Body({Key key, this.onBottomTapped}) : super(key: key);

  @override
  State<StatefulWidget> createState()
  => _BodyState();
}

class _BodyState extends State<Body>{
  int pageIndex = 0;
  String _title = '';
  bool _showStar = true;
  Function onBottomTapped;
  
  List<Game> inProgressList = [], completedList = [];
  List<String> titleList = <String>['IN PROCESS', 'Completed'];
  Game deletedGame;

  @override
  void initState() {
    // TODO: implement initState
    final List<Game> listGame = Provider.of<Products>(context, listen: false).userList;
      
    setState(() {
      inProgressList = listGame.where((game) => game.progression < 100).toList();
      completedList = listGame.where((game) => game.progression == 100).toList();
      // deletedGame = Provider.of<Products>(context, listen: false).selectedGame;
      // print("SetState");
      // if(listGame.isEmpty == true){
      //   print("True");
      //   // inProgressList = listGame.where((game) => game.progression < 100).toList();
      //   // completedList = listGame.where((game) => game.progression == 100).toList();
      //   // inProgressList = listGame.removeWhere((game) => false)
      //   // listGame.clear();
      //   inProgressList.clear();
      //   completedList.clear();
      // }
      // else if(listGame.isEmpty == false){
      //   print("False");
      //   // inProgressList.removeAt(0);
      //   inProgressList = listGame.where((game) => game.progression < 100).toList();
      //   completedList = listGame.where((game) => game.progression == 100).toList();
      //   // inProgressList.clear();
      // }
      
      // inProgressList.removeAt(0);
      // deletedGame = Provider.of<Products>(context, listen: false).deleteGames(context);
      // inProgressListText = "IN PROGRE"
    });
    // if(deletedGame == null){
    //   final List<Game> listGame = Provider.of<Products>(context, listen: false).userList;
    //   inProgressList = listGame.where((game) => game.progression < 100).toList();
    //   completedList = listGame.where((game) => game.progression == 100).toList();
    //   deletedGame = listGame.firstWhere((game) => game.id == widget.);

    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return PageLayout(
    //   appBarTitle: "MY GAMES",
    //   body: _buildBody(),
    //   appBarActions: [
    //     IconButton(
    //       icon: Icon(Icons.favorite),
    //       onPressed: () {},
    //     ),
    //     IconButton(
    //       icon: Icon(
    //         IconMoon.ifilter,
    //         size: 20,
    //       ),
    //       onPressed: () {},
    //     )
    //   ],
    //   hasBottomNavigation: true,
    //   hasDrawer: true,
    //   selectedIndex: pageIndex,
    //   bottomTapped: onBottomTapped,
    // );
    // return Scaffold(
    //   drawer: SideMenu(),
    //   appBar: HomeAppbar(_title, _showStar, context),
    //   body: buildPageView(),
    //   bottomNavigationBar: BottomNavigationBar(

    //     type: BottomNavigationBarType.fixed,
    //     selectedItemColor: Colors.white,
    //     unselectedItemColor: Colors.white38,
    //     // onTap: _onItemTapped,
    //     iconSize: 50,
    //     currentIndex: _selectedPage,
    //     onTap: (index){
    //       bottomTapped(index);
    //     },
    //     items: buildBottomNavBarItems(),
    //     //currentIndex: _selectedIndex,
    //     // selectedFontSize: 15,
    //     backgroundColor: Colors.black87,
    //   ),
    //   // body: Body_Divide_Test(),
    // );
    return Container(
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ...listUp.map((item) {
              //
              // }).toList(),
              // ListTilesWithTitle(
              //   title: "In Progress",
              //   listGamesTitle: inProgressList
              // ),
              // ListTilesWithTitle(
              //   title: "Completed",
              //   listGamesTitle: completedList,
              // ),
              ProgressText(title: titleList[0]),
              CustomDivider(color: Colors.black87),
              // Import buttons that combined Image and Text.
              // For the codes that belows 'IN PROGRESS'.
              HomeWidgetsList(list: inProgressList),
              transparent_divider(),
              
              ProgressText(title: titleList[1]),
              CustomDivider(color: Colors.black87),

              // // For the codes that belows 'COMPILED'.
              HomeWidgetsList(list: completedList),
            ],
          ),
        ),
      );
  }
}