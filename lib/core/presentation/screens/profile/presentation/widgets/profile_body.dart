import 'package:flutter/material.dart';
import 'package:flutter_travel_app/core/domain/controllers/user_controller.dart';
import 'package:get/get.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    controller.user.photoUrl ?? '',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                  )),
              const SizedBox(height: 20),
              Text(controller.user.name,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      color: Color(0xFF452933))),
              const SizedBox(height: 10),
              Text(controller.user.email,
                  style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      color: Color(0xFF73848C))),
            ],
          ),
        );
      },
    );
  }
}
