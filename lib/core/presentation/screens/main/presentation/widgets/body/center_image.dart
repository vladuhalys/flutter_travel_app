import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CenterImage extends StatelessWidget {
  const CenterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/images/human.svg",
            width: (GetPlatform.isAndroid || GetPlatform.isIOS)
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width * 0.3),
        Positioned(
          bottom: 35,
          right: 35,
          height: 80,
          width: MediaQuery.of(context).size.width - 105,
          child: Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: const TextField(
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Where to go',
                          hintStyle: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 24,
                              color: Color(0xFFB8C1C5)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(
                          (GetPlatform.isAndroid || GetPlatform.isIOS)
                              ? 8
                              : 25),
                      onTap: () {},
                      child: Container(
                        height: (GetPlatform.isAndroid || GetPlatform.isIOS)
                            ? 40
                            : 75,
                        width: (GetPlatform.isAndroid || GetPlatform.isIOS)
                            ? 40
                            : 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              (GetPlatform.isAndroid || GetPlatform.isIOS)
                                  ? 8
                                  : 25),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFFF8D74),
                              Color(0xFFF65734),
                            ],
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/search.svg',
                            fit: BoxFit.cover,
                            width: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
