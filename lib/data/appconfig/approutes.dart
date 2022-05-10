import 'package:flutter_bus_app/presentation/home/homecontroller.dart';
import 'package:flutter_bus_app/presentation/home/homescreen.dart';
import 'package:get/get.dart';

import '../../presentation/login/auth_binding.dart';
import '../../presentation/login/loginscreen.dart';
import '../../presentation/setting/settingbinding.dart';
import '../../presentation/setting/settingscreen.dart';
import '../../presentation/splash/splashbinding.dart';
import '../../presentation/splash/splashscreen.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const HOME = '/home';
  static const Splash = '/splash';
  static const LOGIN = '/login';
  static const SETTING = '/setting';

  static List<GetPage> pages = [
    ///other
    GetPage(name: Splash, page: () => SplashScreeen(), bindings: [
      SplashScreenBinding(),
    ]),
    GetPage(name: LOGIN, page: () => LoginScreen(), bindings: [
      AuthControllerBinding(),
    ]),
    GetPage(
        name: HOME,
        page: () => HomeDashboard(),
        bindings: [HomeDashboardBinding()]),
    GetPage(
        name: SETTING,
        page: () => SettingScreen(),
        bindings: [SettingBinding()]),
  ];
}
