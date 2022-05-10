import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../data/appconfig/approutes.dart';

class SplashController extends GetxController {
  void inite() {
    Future.delayed(const Duration(milliseconds: 2000), () async {
      Get.offNamed(Routes.LOGIN);
    }).onError((error, stackTrace) {
      Get.toNamed(Routes.LOGIN);
    });
  }

  @override
  void onInit() {
    super.onInit();

    inite();
  }
}
