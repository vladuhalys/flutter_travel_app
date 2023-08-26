import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_app/core/domain/controllers/bottom_bar_controller.dart';
import 'package:flutter_travel_app/core/presentation/screens/main/domain/my_flutter_app_icons.dart';
import 'package:get/get.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var iconListName = [
    'assets/icons/home.svg',
    'assets/icons/road.svg',
    'assets/icons/add.svg',
    'assets/icons/user.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      builder: (controller) {
        return AnimatedBottomNavigationBar(
          icons: const [
            MyFlutterApp.home,
            MyFlutterApp.road,
            MyFlutterApp.add,
            MyFlutterApp.user,
          ],
          activeIndex: controller.currentIndex,
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
          onTap: (index) {
            controller.changeIndex(index);
            var routeName = '';
            switch (index) {
              case 0:
                routeName = '/main';
                break;
              case 1:
                routeName = '/main';
                break;
              case 2:
                routeName = '/main';
                break;
              case 3:
                routeName = '/profile';
                break;
            }
            Get.toNamed(routeName, preventDuplicates: true);
          },
        );
      },
    );
  }
}
