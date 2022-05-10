import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget time(BuildContext context) {
  ScreenUtil.init(context,
      designSize: Size(414, 896),
      minTextAdapt: true,
      orientation: Orientation.portrait);
  return Container(
    height: 350.h,
    child: Column(
      children: [
        Text("12:20", style: Get.textTheme.bodyMedium),
        SizedBox(
          height: 50.h,
        ),
        Text("12:30", style: Get.textTheme.bodyMedium),
        SizedBox(
          height: 50.h,
        ),
        Text("12:50", style: Get.textTheme.bodyMedium),
        SizedBox(
          height: 50.h,
        ),
        Text("01:20", style: Get.textTheme.bodyMedium),
        SizedBox(
          height: 50.h,
        ),
        Text("02:04", style: Get.textTheme.bodyMedium),
        SizedBox(
          height: 50.h,
        ),
      ],
    ),
  );
}
