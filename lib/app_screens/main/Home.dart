import 'package:flutter/material.dart';
import 'package:flutter_app/app_screens/details/details_attributes/DetailsBody.dart';
import 'package:flutter_app/app_screens/discover/discover_attributes/DiscoverBody.dart';
import 'package:flutter_app/app_screens/main/Body.dart';
import 'package:flutter_app/app_screens/main/HomeAttribute.dart';
import 'package:flutter_app/app_screens/settings/SideMenu.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';


class Home extends StatefulWidget{
  final String title;

  Home({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState()
    => _HomeState();
}

class _HomeState extends State<Home>{
  String _title;
  int _selectedPage = 0;
  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    pageList.add(Body());
    pageList.add(DiscoverPage());
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
        Body(),
        DiscoverPage(),
      ]
    );
  }

  void pageChanged(int index){
    setState((){
      _selectedPage = index;
    });
  }

  void onAddButtonTapped(int index){
    pageController.animateToPage(index);
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(_title),
        centerTitle: true,
        actions: AppbarActions(),
      ),
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
          //Navigator.pushNamed(context, '/home');
          // onAddButtonTapped(1);
          _title="MY GAMES";
          break;
        }
        case 1:{
          // Navigator.pushNamed(context, '/discover');
          // onAddButtonTapped(1);
          _title="DISCOVER";
          break;
        }
      }
    });
  }
}
