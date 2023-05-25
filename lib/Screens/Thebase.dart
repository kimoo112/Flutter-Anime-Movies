// ignore_for_file: unused_import, file_names, non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import '../../Constant/colors.dart';
import 'Bottom/profile.dart';
import 'Bottom/settings.dart';
import 'Home.dart';

class TheBase extends StatefulWidget {
  TheBase({super.key});

  @override
  State<TheBase> createState() => _TheBaseState();
}

class _TheBaseState extends State<TheBase> {
  int Kindx = 0;

  List<Widget> KPages = [
    HomeScreen(),
  SettingsScreen(),
 ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: KPages.elementAt(Kindx),

      bottomNavigationBar: MoltenBottomNavigationBar(
        selectedIndex: Kindx,
        barColor: corange,
        domeCircleColor: cblack2,
        onTabChange: (clickedIndex) {
          setState(() {
            Kindx = clickedIndex;
          });
        },
        tabs: [
          MoltenTab(
              icon: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 12),
              ),
              selectedColor: corange,
              unselectedColor: cblack2),
          MoltenTab(
              icon: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 12),
              ),
              selectedColor: corange,
              unselectedColor: cblack2),
          MoltenTab(
              icon: Icon(Icons.person),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 12),
              ),
              selectedColor: corange,
              unselectedColor: cblack2),
        ],
      ),
    );
  }
}
