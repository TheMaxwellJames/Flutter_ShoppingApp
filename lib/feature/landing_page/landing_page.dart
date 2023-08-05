import 'package:flutter/material.dart';
import 'package:flutter_ecom/feature/categories/categories.dart';
import 'package:flutter_ecom/feature/home_page/home_page.dart';
import 'package:flutter_ecom/feature/profile/profile.dart';
import 'package:flutter_ecom/foundation/sp_icon/sp_icon.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Widget> pages = [HomePage(), Categories(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xfffe416c),
        selectedLabelStyle: const TextStyle(fontSize: 13),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "logo-black.png",
              isSelected: 0 ==currentIndex,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "categories.png",
               isSelected: 1 ==currentIndex,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: SPIcon(
              assetname: "profile.png",
              isSelected: 2 ==currentIndex,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
