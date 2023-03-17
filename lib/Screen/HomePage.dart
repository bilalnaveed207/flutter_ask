import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_task/Screen/Component/home.dart';
import 'package:flutter_task/Utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Component/all_user.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    Home(),
    Text('Screen 2'),
    AllUser(),
    Text('Screen 4'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 23,
          elevation: 5,
          selectedItemColor: primaryColor,
          unselectedItemColor: Color(0xff667C8A),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),
          unselectedLabelStyle: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500) ,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'All User',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined),
              label: 'More',
            ),
          ],
        ),

    );
  }
}

