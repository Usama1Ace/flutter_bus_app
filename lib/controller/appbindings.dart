import 'package:get/get.dart';

import 'appsettingcontroller.dart';

class AppSettiingBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<AppSettingController>(() => AppSettingController());
    Get.put(AppSettingController());
  }
}
