import 'package:flutter_travel_app/core/domain/controllers/bottom_bar_controller.dart';
import 'package:flutter_travel_app/core/domain/controllers/places_controller.dart';
import 'package:flutter_travel_app/core/domain/controllers/user_controller.dart';
import 'package:get/get.dart';

class ApplicationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlacesController>(() => PlacesController());
    Get.lazyPut<BottomBarController>(() => BottomBarController());
    Get.lazyPut<UserController>(() => UserController());
  }
}
