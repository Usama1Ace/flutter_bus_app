import 'package:flutter/material.dart';

import 'appcolors.dart';

var themeDataLight = ThemeData(
    primarySwatch: createMaterialColor(KPurple),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    // textTheme: TextTheme(
    //   headline6: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
    //   headline5: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600),
    //   headline4: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.w600),
    //   headline3: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.w600),
    //   headline2: GoogleFonts.poppins(fontSize: 45, fontWeight: FontWeight.w600),
    //   headline1: GoogleFonts.poppins(fontSize: 50, fontWeight: FontWeight.w600),
    //   bodyLarge: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
    //   bodyMedium:
    //       GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w200),
    //   bodySmall: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w100),
    //   caption: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w100),
    //   subtitle1: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w100),
    //   subtitle2: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w100),
    //   displayLarge:
    //       GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.w100),
    //   displayMedium:
    //       GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w100),
    //   displaySmall:
    //       GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w100),
    //   labelLarge:
    //       GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w100),
    //   labelMedium:
    //       GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w100),
    //   labelSmall:
    //       GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w100),
    //   titleLarge:
    //       GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w900),
    //   titleMedium:
    //       GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600),
    //   titleSmall:
    //       GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w100),
    //   bodyText1: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w500),
    //   bodyText2: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
    //   overline: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w100),
    //   headlineLarge:
    //       GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w100),
    //   headlineMedium:
    //       GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w100),
    //   headlineSmall:
    //       GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w100),
    //   button: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
    // ),
    appBarTheme: AppBarTheme(
        backgroundColor: KWhite,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black87),
        iconTheme: IconThemeData(color: Colors.black87),
        actionsIconTheme: IconThemeData(color: Colors.black87)),
    tabBarTheme:
        TabBarTheme(unselectedLabelColor: KBlackDisabled, labelColor: KPurple),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: KPurple),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: KBlackDisabled),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide:
            BorderSide(width: 1, color: Colors.black12.withOpacity(0.1)),
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.black)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: KRed)),
    ));
