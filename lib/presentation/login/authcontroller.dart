import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/appconfig/approutes.dart';

class AuthControllerController extends GetxController {
  TextEditingController emailLogin = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  RxBool isShowingPass = false.obs;
  RxBool remmberMe = false.obs;

  Future<void> login() async {
    if (loginKey.currentState!.validate()) {
      Get.toNamed(Routes.HOME);
    }
  }
}
