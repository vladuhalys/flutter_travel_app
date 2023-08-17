import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/backgrounds/intro.jpg',
          fit: BoxFit.cover,
          height: (GetPlatform.isAndroid || GetPlatform.isIOS)
              ? MediaQuery.of(context).size.height
              : null,
          width: (GetPlatform.isWeb) ? MediaQuery.of(context).size.width : null,
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Text'),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(220, 70)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70.0))),
                  )),
            ))
      ],
    ));
  }
}
