import 'package:flutter/material.dart';

import 'body/carusel.dart';
import 'body/category_list.dart';
import 'body/center_image.dart';
import 'body/up_bar_row.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const UpBarBody(),
            const CenterImage(),
            CategoryList(),
            Carusel(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
