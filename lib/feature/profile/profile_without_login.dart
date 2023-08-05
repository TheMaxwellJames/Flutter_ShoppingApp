import 'package:flutter/material.dart';
import 'package:flutter_ecom/foundation/profile_item/profile_item.dart';
import 'package:flutter_ecom/foundation/theme/colors.dart';


class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});

  final double topContainerheight = 190;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topContainerheight,
          child: Column(
            children: [
              Container(
                height: topContainerheight* .58,
                color: AppColor.dummyBGColor,
              ),
              Container(
                 height: topContainerheight* .42,
                 color: AppColor.whiteColor,
              ),
            ],
          ),
        ),
      const  SizedBox(height: 15,
        ),
        Container(
          color: AppColor.whiteColor,
          child: const Column(
          children:  [
            ProfileItem(
              title: "Orders",
              subtitle: "Check your orders status",
              assetName: "orders.png",
               isLast: false,
            ),

             ProfileItem(
              title: "Help Center",
              subtitle: "Help regarding your recent purchase",
              assetName: "orders.png",
              isLast: false,
            ),  

               ProfileItem(
              title: "Wishlist",
              subtitle: "Your most love style",
              assetName: "wishlist.png",
               isLast: true,
            ), 
          ],
        ),
        ),

            const  SizedBox(height: 15,
        ),

           Container(
          color: AppColor.whiteColor,
          child: const Column(
          children:  [
            ProfileItem(
              title: "Scan for coupon",
              
              assetName: "orders.png",
               isLast: false,
            ),

          
               ProfileItem(
              title: "Refer & Earn",
              assetName: "wishlist.png",
               isLast: true,
            ), 
          ],
        ),
        ),
      ],
    );
  }
}