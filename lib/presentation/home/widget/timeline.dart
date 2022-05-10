import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget timeline(BuildContext context) {
  ScreenUtil.init(context,
      designSize: Size(414, 896),
      minTextAdapt: true,
      orientation: Orientation.portrait);
  return Container(
    height: 400.h,
    child: Column(
      children: [
        for (int i = 0; i <= 5; i++) combine(context),
      ],
    ),
  );
}

Widget combine(BuildContext context) {
  ScreenUtil.init(context,
      designSize: Size(414, 896),
      minTextAdapt: true,
      orientation: Orientation.portrait);
  return Container(
    padding: EdgeInsets.all(0),
    margin: EdgeInsets.all(0),
    height: 62.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(height: 40.h, width: 1.w, color: Colors.grey),
        Icon(
          Icons.circle,
          color: Colors.grey,
          size: 22.h,
        ),
      ],
    ),
  );
}
