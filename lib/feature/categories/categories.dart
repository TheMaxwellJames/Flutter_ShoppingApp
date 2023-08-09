import 'package:flutter/material.dart';
import 'package:flutter_ecom/feature/login/login_bottomsheet.dart';
import 'package:flutter_ecom/foundation/theme/colors.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColor.scaffoldBGColor,

       body: SafeArea(child: LoginBottomsheet()),
    );
  }
}