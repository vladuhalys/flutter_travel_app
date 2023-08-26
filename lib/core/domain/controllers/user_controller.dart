import 'package:flutter_travel_app/core/domain/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final _user = User(
          id: "1",
          name: "Vladyslav Lysenko",
          photoUrl: "assets/images/user_photo.jpg",
          email: "vlad.l@gmail.com",
          password: "qwert12345")
      .obs;

  User get user => _user.value;
}
