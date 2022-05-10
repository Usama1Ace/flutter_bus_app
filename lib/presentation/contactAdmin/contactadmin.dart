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
import 'admincontroller.dart';

class ContactAdmin extends GetView<AdminController> {
  ContactAdmin({Key? key}) : super(key: key);
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
              "Contact Admin",
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
                  Text("You can contact admin ",
                      style: Get.textTheme.headline5),
                  SizedBox(
                    height: 40.h,
                  ),
                  ListTile(
                    trailing: Icon(Icons.mail),
                    leading: Text("Email:", style: Get.textTheme.headline6),
                    title:
                        Text("someone@gm.com", style: Get.textTheme.bodyMedium),
                    onTap: () {},
                  ),
                  ListTile(
                    trailing: Icon(Icons.phone),
                    leading: Text("Phone:", style: Get.textTheme.headline6),
                    title:
                        Text("0800 000 00000", style: Get.textTheme.bodyMedium),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
