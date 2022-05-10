import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../widgets/extras.dart';
import 'splashcontroller.dart';

class SplashScreeen extends GetWidget<SplashController> {
  SplashScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getUtills(context);
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 400.w, child: Image.asset("assets/images/bus.png")),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Bus Tracking System",
                style: Get.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Loading Please wait ......",
                style: Get.textTheme.labelLarge!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.blue),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "© 2021 bus Limited, Birmingham, United Kingdom.\nCompany number ",
                style: Get.textTheme.caption,
                textAlign: TextAlign.center,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
