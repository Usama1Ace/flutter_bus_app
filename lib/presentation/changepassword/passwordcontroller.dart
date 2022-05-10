import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/appconfig/appcolors.dart';

class PasswordController extends GetxController
    with GetSingleTickerProviderStateMixin {
  PasswordController();

  dynamic argumentData = Get.arguments;

  RxBool isOnline = false.obs;
  RxInt tabSelected = 0.obs;
  PageController pageController = PageController();

  late TabController tabController;

  RxString selectVheicle = "".obs;

  RxList<String> selectedComapny = RxList();

  // Rx<BanedModel> bannedModel =
  //     BanedModel(reason: "", driverId: "", status: ,time: Timestamp.now()).obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // getJobs().listen((event) {

    // });

    // joinCompanies.bindStream(getJoinedComapny());

    // joinCompanies.listen((p0) {
    //   Get.find<AppSettingController>().compnies.value = p0;
    // });

    // driiverIte

    // jobs.listen((dd) {
    //   // snackSuccess("New job has been assigned");
    // });

    ///get online dataa
  }
}

class PasswordBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<HomeDashboardController>(() => HomeDashboardController());
    Get.put(PasswordController());
  }
}
