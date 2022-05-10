import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bus_app/presentation/changepassword/passwordscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../data/appconfig/appcolors.dart';
import '../contactAdmin/contactadmin.dart';
import 'settingScreenController.dart';

class SettingScreen extends GetView<SettingScreenController> {
  SettingScreen({Key? key}) : super(key: key);
  dynamic argumentData = Get.arguments;
  @override
  Widget build(BuildContext context) {
    // getUtills(context);
    // print(argumentData);
    ScreenUtil.init(context,
        designSize: Size(414, 896),
        minTextAdapt: true,
        orientation: Orientation.portrait);

    return Container(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_ios_new)),
            centerTitle: true,
            title: Text(
              "Setting",
              style: Get.textTheme.headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.grey[50],
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  ListTile(
                    focusColor: Colors.purple,
                    leading: Icon(Icons.lock),
                    title: Text("Change Password",
                        style: Get.textTheme.bodyMedium),
                    onTap: () {
                      Get.to(PasswordScreen());
                    },
                  ),
                  ListTile(
                    focusColor: Colors.purple,
                    leading: Icon(Icons.person),
                    title:
                        Text("Contact Admin", style: Get.textTheme.bodyMedium),
                    onTap: () {
                      Get.to(ContactAdmin());
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
