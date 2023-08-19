import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonLabel extends StatelessWidget {
  const ButtonLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'intro'.tr,
      style: const TextStyle(
          fontFamily: 'Gilroy', fontWeight: FontWeight.w700, fontSize: 20),
    );
  }
}
