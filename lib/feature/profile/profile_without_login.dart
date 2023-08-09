import 'package:flutter/material.dart';
import 'package:flutter_ecom/feature/profile/footer_content.dart';
import 'package:flutter_ecom/foundation/profile_item/profile_item.dart';
import 'package:flutter_ecom/foundation/theme/colors.dart';

//import 'footer_content.dart';


class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});

  final double topContainerheight = 190;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: topContainerheight,
          child: Stack(
            children: [
              Column(
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
              Positioned(
                bottom: 20,
                  left: 20,
                child: Container(
                  height: 132,
                  width: 132,
                  child: Card(
                      child: Container(
                         padding: EdgeInsets.all(25),
                        child: Image.asset("assets/images/profile.png",
                           color: AppColor.captionColor,
                        ),
                      ),
                      
                  ),
                ),
              ),
               Positioned(
                  bottom: 22,
                  left: 168,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.buttonColor),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 210,
                      height: 45,
                      child: Center(
                        child: Text("LOG IN/SIGN UP"),
                      ),
                    ),
                  ),
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
         const  SizedBox(height: 18,
        ),
       FooterContent(),

          const SizedBox(height: 30),

          Text(
            "APP VERSION 0.0.1",
            style: Theme.of(context).textTheme.labelSmall,
          ),

          const SizedBox(height: 20),

      ],
      
    );
  }
}