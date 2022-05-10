import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bus_app/presentation/changepassword/passwordcontroller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../data/appconfig/appcolors.dart';
import '../widgets/extras.dart';

class PasswordScreen extends GetView<PasswordController> {
  PasswordScreen({Key? key}) : super(key: key);
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
              "Change Password",
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
                  Text("Change your Password ", style: Get.textTheme.headline5),
                  SizedBox(
                    height: 40.h,
                  ),
                  customTextfield22("Old Password", "Type your Password here",
                      TextEditingController(), "Enter youe Password"),
                  SizedBox(
                    height: 5.h,
                  ),
                  customTextfield22("New Password", "Type your Password here",
                      TextEditingController(), "Enter youe Password"),
                  SizedBox(
                    height: 5.h,
                  ),
                  customTextfield22(
                      "Confirm Password",
                      "Type your Password here",
                      TextEditingController(),
                      "Enter youe Password"),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextButton(
                      onPressed: () {
                        // controller.login();
                      },
                      child: Container(
                        width: 200.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.sp))),
                        child: Center(
                            child: Text("Submit",
                                style: TextStyle(
                                  color: Colors.white,
                                ))),
                      )),
                ],
              ),
            ),
          )),
    );
  }
}
