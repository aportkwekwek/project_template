import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive_animation/screens/home/home_screen.dart';

class LoginController extends GetxController {
  static LoginController get find => Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  dynamic googleAuthenticate() {
    //Insert authentication
    Get.off(() => HomePage());
  }
}
