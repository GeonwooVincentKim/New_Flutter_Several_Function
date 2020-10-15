import 'package:flutter/material.dart';
import 'package:flutter_app/shared/helpers/icomoon.dart';


class PageLayout extends StatelessWidget {

  final Widget body;
  final String appBarTitle;
  final List<Widget> appBarActions;
  final bool hasDrawer;
  final bool hasBottomNavigation;

  final int selectedIndex;
  final Function bottomTapped;

  PageLayout({
    @required this.body,
    @required this.appBarTitle,
    this.appBarActions,
    this.hasDrawer = false,
    this.hasBottomNavigation = false,
    this.selectedIndex = 0,
    this.bottomTapped
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: _buildAppBar(),
      body: body,
      drawer: hasDrawer ? _buildDrawer(context) : null,
      bottomNavigationBar: hasBottomNavigation ? _buildBottomNavigationBar(context) : null,
      backgroundColor: backgroundColor,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(appBarTitle.toUpperCase()),
      backgroundColor: backgroundColor,
      actions: appBarActions,
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    String _currentRoute = ModalRoute.of(context).settings.name;

    return Drawer(
      child: Container(
        color: backgroundColor,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                child: ListTile(
                  title: Text(
                    'Username',
                    style: TextStyle(fontWeight: FontWeight.bold)
                  ),
                  leading: Icon(
                    IconMoon.iuser,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: boxBackgroundColor
                    ),
                  )
                ),
              ),
              _buildDrawerTile(
                title: "Homepage",
                currentRoute: _currentRoute,
                icon: Icons.home,
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                }
              ),
              _buildDrawerTile(
                link: '/settings',
                title: "Settings",
                currentRoute: _currentRoute,
                icon: Icons.settings,
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/settings');
                }
              ),
              _buildDrawerTile(
                link: 'logout',
                title: "Logout",
                // icon: Icons.logout,
                onTap: () {}
              )
            ],
          ),
        ),
      )
    );
  }


  Widget _buildDrawerTile({String link = '/', String currentRoute  = '/', String title, IconData icon, Function onTap}) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: link == currentRoute ? textAccentColor : textGreyColor
        )
      ),
      leading: Icon(
        icon,
        color: link == currentRoute ? textAccentColor : textGreyColor,
      ),
      onTap: onTap,
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      elevation: 2,
      backgroundColor: backgroundColor,
      unselectedItemColor: Colors.white,
      currentIndex: selectedIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          // label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconMoon.igamepad),
          // label: 'Discover'
        ),
      ],
      onTap: (int index) {
        bottomTapped(index);
      },
    );
  }
}