import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_travel_app/core/domain/controllers/user_controller.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

class UpBarBody extends StatelessWidget {
  const UpBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      builder: (controller) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        (GetPlatform.isAndroid || GetPlatform.isIOS) ? 15 : 50),
                    child: Image.asset(
                      controller.user.photoUrl ?? '',
                      width: (GetPlatform.isAndroid || GetPlatform.isIOS)
                          ? 50
                          : 200,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome home',
                        style: TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 12,
                            color: Color(0xFF73848C)),
                      ),
                      Text(controller.user.name,
                          style: const TextStyle(
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xFF452933))),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: (GetPlatform.isAndroid || GetPlatform.isIOS)
                    ? const EdgeInsets.only(right: 20)
                    : const EdgeInsets.only(right: 35, bottom: 35),
                child: InkWell(
                  borderRadius: BorderRadius.circular(
                      (GetPlatform.isAndroid || GetPlatform.isIOS) ? 15 : 25),
                  onTap: () {},
                  child: Container(
                    height:
                        (GetPlatform.isAndroid || GetPlatform.isIOS) ? 50 : 75,
                    width:
                        (GetPlatform.isAndroid || GetPlatform.isIOS) ? 50 : 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            (GetPlatform.isAndroid || GetPlatform.isIOS)
                                ? 15
                                : 25),
                        color: const Color(0xFFD9D9D9)),
                    child: Center(
                      child: badges.Badge(
                        position: badges.BadgePosition.topEnd(top: -8, end: 1),
                        badgeContent: const Text(''),
                        badgeStyle: const badges.BadgeStyle(
                            badgeColor: Color(0xFFFF7029)),
                        child: SvgPicture.asset(
                          'assets/icons/notif.svg',
                          fit: BoxFit.cover,
                          width: (GetPlatform.isAndroid || GetPlatform.isIOS)
                              ? 23
                              : 35,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ]);
      },
    );
  }
}
