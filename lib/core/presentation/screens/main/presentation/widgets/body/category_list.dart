import 'package:flutter/material.dart';

import 'widgets/category_item.dart';

class CategoryList extends StatelessWidget {
  CategoryList({super.key});

  final List<String> titels = ["Mountain", "Beach", "City", "Forest"];
  final List<String> images = [
    "https://imgs.search.brave.com/U6vCygHBExEIgyzfswnojcGXK7JDKitXD8pG_qravq0/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE0/NTc0NTk2ODYyMjUt/YzdkYjc5ZDRlNTlm/P2l4bGliPXJiLTQu/MC4zJml4aWQ9TTN3/eE1qQTNmREI4TUh4/bGVIQnNiM0psTFda/bFpXUjhNVFo4Zkh4/bGJud3dmSHg4Zkh3/PSZ3PTEwMDAmcT04/MA",
    "https://imgs.search.brave.com/QFu9GNcQUkVtspSnTFCgnXFpowEhisf8qkS2bISywcg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2FsbHBhcGVyc2Fm/YXJpLmNvbS8zOC82/Ni80em1TaU8uanBn",
    "https://imgs.search.brave.com/PtfcUdRDUXMlS4Bp5X_idQTHYiiPDC3-sW1Atdh3ErQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzZXQuY29t/L3cvZnVsbC8zLzIv/YS80OTA5OS5qcGc",
    "https://imgs.search.brave.com/9rV40wz5sCs0WbpEL_SRdVyvZXIX_z-aD-gadwlIpNI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzZXQuY29t/L3cvZnVsbC84L2Uv/NC8xNDQxMzQuanBn",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        const Text('Popular Categories',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Gilroy',
                color: Color(0xFF452933))),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var i = 0; i < titels.length; i++)
              CategoryItem(
                imageUrl: images[i],
                title: titels[i],
              ),
          ],
        ),
      ],
    );
  }
}
