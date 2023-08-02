import 'package:flutter/material.dart';
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
      home: LandingPage(),

    );
  
}
}
