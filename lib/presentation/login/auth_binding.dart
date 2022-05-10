import 'package:get/get.dart';

import 'authcontroller.dart';

class AuthControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthControllerController>(() => AuthControllerController());
  }
}
