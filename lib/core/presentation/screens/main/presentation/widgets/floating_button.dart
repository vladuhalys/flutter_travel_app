import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFFF65734),
      child: SvgPicture.asset(
        'assets/icons/action.svg',
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
      onPressed: () {},
      //params
    );
  }
}
