import 'package:flutter/material.dart';

import 'widgets/center_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset('assets/backgrounds/intro.jpg',
            fit: BoxFit.cover, height: MediaQuery.of(context).size.height),
        const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 100),
              child: CenterButton(),
            ))
      ],
    ));
  }
}
