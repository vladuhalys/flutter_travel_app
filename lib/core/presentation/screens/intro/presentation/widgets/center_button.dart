import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button_label.dart';

class CenterButton extends StatelessWidget {
  const CenterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(70)),
          gradient: LinearGradient(colors: [
            Color(0xFFFF8D74),
            Color(0xFFF65734),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: ElevatedButton(
          onPressed: () => Get.toNamed('/main'),
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(220, 70),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(70)))),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ButtonLabel(),
              SizedBox(width: 10),
              Icon(
                Icons.arrow_forward_rounded,
                size: 24.0,
              ),
            ],
          )),
    );
  }
}
