import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bus_app/presentation/setting/settingscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../data/appconfig/appcolors.dart';
import 'homecontroller.dart';
import 'widget/time.dart';
import 'widget/timeline.dart';

class HomeDashboard extends GetView<HomeDashboardController> {
  HomeDashboard({Key? key}) : super(key: key);
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
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: () {
                    Get.to(SettingScreen());
                  },
                  icon: Icon(Icons.settings_outlined))
            ],
            centerTitle: true,
            title: Text(
              "Track",
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
                  Row(
                    children: [
                      Expanded(
                          flex: 5,
                          child: Container(
                            height: 350.h,
                            child: Column(
                              children: [
                                Text("Stop1  (1 min) ",
                                    style: Get.textTheme.headline5),
                                SizedBox(
                                  height: 40.h,
                                ),
                                Text("Stop2  (12 min) ",
                                    style: Get.textTheme.headline5),
                                SizedBox(
                                  height: 40.h,
                                ),
                                Text("Stop3  (4 min) ",
                                    style: Get.textTheme.headline5),
                                SizedBox(
                                  height: 40.h,
                                ),
                                Text("Stop4  (15 min) ",
                                    style: Get.textTheme.headline5),
                                SizedBox(
                                  height: 40.h,
                                ),
                                Text("Stop5  (20 min) ",
                                    style: Get.textTheme.headline5),
                              ],
                            ),
                          )),
                      Expanded(flex: 1, child: timeline(context)),
                      Expanded(flex: 2, child: time(context))
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
