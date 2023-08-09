import 'package:flutter/material.dart';
import 'package:flutter_ecom/feature/profile/profile_without_login.dart';
import 'package:flutter_ecom/foundation/theme/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        elevation: 0,
         centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Profile',
          style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
         
      ),
       body: SingleChildScrollView(
        child: ProfileWithoutLogin(),
        ),
    );
  }
}