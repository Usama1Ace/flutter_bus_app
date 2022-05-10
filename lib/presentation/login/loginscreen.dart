import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../data/appconfig/appcolors.dart';
import '../../data/appconfig/approutes.dart';
import '../widgets/extras.dart';
import 'authcontroller.dart';

class LoginScreen extends GetView<AuthControllerController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getUtills(context);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Column(children: [
              SizedBox(
                  width: 200.w, child: Image.asset("assets/images/bus.png")),
              SizedBox(
                height: 100.h,
              ),
              Text(
                "Login",
                style: Get.textTheme.headline6,
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Form(
                key: controller.loginKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    emailTextField(),
                    SizedBox(
                      height: 30.h,
                    ),
                    passwordField(),
                    SizedBox(
                      height: 10.h,
                    ),
                    CheckboxListTile(
                      value: controller.remmberMe.value,
                      onChanged: (v) => controller.remmberMe.toggle(),
                      title: Text("Remember me"),
                    ),
                    SizedBox(height: 100.h),
                    TextButton(
                        onPressed: () {
                          controller.login();
                        },
                        child: Container(
                          width: 200.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.sp))),
                          child: Center(
                              child: Text("Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ))),
                        )),
                    SizedBox(height: 50.h),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      enabled: true,
      controller: controller.password,
      validator: (value) {
        if (value!.length < 0) {
          return "Please enter the password";
        } else {
          return null;
        }
      },
      obscureText: !controller.isShowingPass.value,
      obscuringCharacter: "*",
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: Icon(!controller.isShowingPass.value
                ? Icons.visibility_off
                : Icons.visibility_outlined),
            onPressed: () {
              // controller.password.clear();
              controller.isShowingPass.toggle();
            },
          ),
          hintText: "Password",
          label: Text("Enter your password")),
    );
  }

  Widget emailTextField() {
    return TextFormField(
      enabled: true,
      controller: controller.emailLogin,
      validator: (value) {
        if (!GetUtils.isEmail(value!.trim()))
          return "Email is not valid";
        else
          return null;
      },
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email_outlined),
          hintText: "Email",
          label: Text("Enter your email")),
    );
  }
}
