import 'package:batang_app/config/ColorConfig.dart';
import 'package:batang_app/page/menuPages/HomePage.dart';
import 'package:batang_app/page/menuPages/NotifPage.dart';
import 'package:batang_app/page/menuPages/ProfilePage.dart';
import 'package:batang_app/page/menuPages/SearchPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    NotificationPage(),
    PRofilePage(),
  ];

  int _selectedIndex = 0;

  void changeIndexPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndexPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color:
                  _selectedIndex == 0 ? Colorconfig.primaryColor : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color:
                  _selectedIndex == 1 ? Colorconfig.primaryColor : Colors.grey,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
                color: _selectedIndex == 2
                    ? Colorconfig.primaryColor
                    : Colors.grey),
            label: "Notif",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: _selectedIndex == 3
                    ? Colorconfig.primaryColor
                    : Colors.grey),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
