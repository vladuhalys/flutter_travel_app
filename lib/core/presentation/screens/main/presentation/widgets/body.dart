import 'package:flutter/material.dart';

import 'body/center_image.dart';
import 'body/up_bar_row.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: UpBarBody(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: CenterImage(),
        ),
      ],
    );
  }
}
