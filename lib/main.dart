import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/appbindings.dart';
import 'data/appconfig/apptheme.dart';
import 'data/appconfig/approutes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bus App',
      theme: themeDataLight,
      getPages: Routes.pages,
      initialBinding: AppSettiingBinding(),
      initialRoute: Routes.Splash,
    );
  }
}
