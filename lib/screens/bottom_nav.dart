import 'package:finance101/screens/Profile.dart';
import 'package:finance101/screens/community_screen.dart';
import 'package:finance101/screens/learn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class BottomNav extends StatefulWidget {
  @override
  BottomNavState createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int currentIdx = 0;
  List screens = [
    Home(),
    Learn(),
    CommunityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: GNav(
            backgroundColor: Colors.black,
            activeColor: Colors.white,
            color: Colors.white,
            gap: 8,
            padding: EdgeInsets.all(8),
            tabBackgroundColor: Colors.grey.shade800,
            selectedIndex: currentIdx,
            onTabChange: (idx){
              setState(() {
                currentIdx = idx;
              });
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.school,
                text: 'Learn',
              ),
              GButton(
                icon: Icons.group,
                text: 'Community',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Profile',
              )
            ]),
      ),
      backgroundColor: Color.fromRGBO(36, 36, 40, 1),
      body: screens[currentIdx]
    );
  }
}
