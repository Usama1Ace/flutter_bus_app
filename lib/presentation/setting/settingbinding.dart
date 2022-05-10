import 'package:flutter_bus_app/presentation/setting/settingScreenController.dart';
import 'package:flutter_bus_app/presentation/splash/splashcontroller.dart';
import 'package:get/get.dart';

class SettingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingScreenController>(() => SettingScreenController());
  }
}
