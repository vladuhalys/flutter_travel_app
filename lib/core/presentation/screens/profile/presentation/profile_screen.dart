import 'package:flutter/material.dart';
import 'package:flutter_travel_app/core/presentation/widgets/bottom_bar.dart';
import 'package:flutter_travel_app/core/presentation/widgets/floating_button.dart';

import 'widgets/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: ProfileBody(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    ));
  }
}
