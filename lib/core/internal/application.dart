import 'package:flutter/material.dart';
import 'package:flutter_travel_app/core/internal/util/bindings.dart';
import 'package:flutter_travel_app/core/internal/util/lang.dart';
import 'package:flutter_travel_app/core/presentation/screens/detail/presentation/detail_screen.dart';
import 'package:flutter_travel_app/core/presentation/screens/intro/presentation/intro_screen.dart';
import 'package:flutter_travel_app/core/presentation/screens/main/presentation/main_screen.dart';
import 'package:flutter_travel_app/core/presentation/screens/profile/presentation/profile_screen.dart';
import 'package:flutter_travel_app/core/presentation/screens/settings/presentation/settings_screen.dart';
import 'package:get/get.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: Lang(), // your translations
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('en', 'US'),
        initialBinding: ApplicationBindings(),
        initialRoute: '/intro',
        getPages: [
          GetPage(name: '/intro', page: () => const IntroScreen()),
          GetPage(name: '/main', page: () => const MainScreen()),
          GetPage(name: '/detail', page: () => const DetailScreen()),
          GetPage(name: '/settings', page: () => const SettingsScreen()),
          GetPage(name: '/profile', page: () => const ProfileScreen())
        ]);
  }
}
