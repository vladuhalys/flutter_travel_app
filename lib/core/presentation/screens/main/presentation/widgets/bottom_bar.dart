import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_app/core/presentation/screens/main/domain/my_flutter_app_icons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _bottomNavIndex = 0;
  var iconListName = [
    'assets/icons/home.svg',
    'assets/icons/road.svg',
    'assets/icons/add.svg',
    'assets/icons/user.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: const [
        MyFlutterApp.home,
        MyFlutterApp.road,
        MyFlutterApp.add,
        MyFlutterApp.user,
      ],
      activeIndex: _bottomNavIndex,
      iconSize: 28,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      inactiveColor: const Color(0xFF73848C),
      activeColor: const Color(0xFFF65734),
      shadow: BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: -5,
        blurRadius: 3,
        offset: const Offset(0, -3),
      ),
      backgroundColor: Colors.white,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) => setState(() => _bottomNavIndex = index),
      //other params
    );
  }
}
