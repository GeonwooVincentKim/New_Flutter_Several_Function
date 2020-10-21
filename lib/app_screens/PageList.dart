import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/app_attributes/HomeAppBar.dart';
import 'package:flutter_app/app_screens/Discover.dart';
import 'package:flutter_app/app_screens/Home.dart';
import 'package:flutter_app/app_screens/SideMenu.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';


class PageTouch extends StatefulWidget{
  final String title;

  PageTouch({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState()
    => _PageTouchState();
}

class _PageTouchState extends State<PageTouch>{
  String _title;
  bool _showStar = true;
  int _selectedPage = 0;
  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    pageList.add(Home());
    pageList.add(Discover());
    _title = "MY GAMES";
    super.initState();
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems(){
    return [
      BottomNavigationBarItem(
        icon: Icon(IconMoon.igamepad),
        title: Text('My Games'),
      ),
      BottomNavigationBarItem(
        icon: Icon(IconMoon.isearch),
        title: Text('Discover'),
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView(){
    return PageView(
      controller: pageController,
      onPageChanged: (index){
        pageChanged(index);
      },
      //scrollDirection: Axis.horizontal,
      children: <Widget>[
        Home(),
        Discover(),
      ]
    );
  }

  void pageChanged(int index){
    setState((){
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: HomeAppBar(_title, _showStar, context),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        // onTap: _onItemTapped,
        iconSize: 50,
        currentIndex: _selectedPage,
        onTap: (index){
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
        //currentIndex: _selectedIndex,
        // selectedFontSize: 15,
        backgroundColor: Colors.black87,
      ),
      // body: Body_Divide_Test(),
    );
  }

  void bottomTapped(int index){
    setState((){
      _selectedPage = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 700), curve: Curves.ease);
      switch(index){
        case 0: {
          _showStar = true;
          _title="MY GAMES";
          break;
        }
        case 1:{
          _showStar = false;
          _title="DISCOVER";
          break;
        }
      }
    });
  }
}
