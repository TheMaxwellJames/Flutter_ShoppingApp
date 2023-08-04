// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecom/foundation/theme/colors.dart';
import 'package:get/get.dart';

import 'feature/landing_page/landing_page.dart';


//import 'feature/test/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Perry Stores",
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 24.5,
            letterSpacing: 0.15,
            color: AppColor.headlineLarge,
          ),
          bodyLarge: TextStyle(
            color: AppColor.bodyColor1,
             fontSize: 18,
          ),
          bodyMedium: TextStyle(
            fontSize: 15,
            color: AppColor.captionColor
          )
        ),
      ),
      home: LandingPage(),

    );
  
}
}
