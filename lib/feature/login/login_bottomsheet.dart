import 'package:flutter/material.dart';
import 'package:flutter_ecom/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:flutter_ecom/foundation/theme/colors.dart';

class LoginBottomsheet extends StatelessWidget {
  const LoginBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
     // height: MediaQuery.of(context).size.height/2,
      color: AppColor.whiteColor,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/logo-big.png",
              height: 45,
              width: 45,
              ),
              IconButton(
                onPressed: () {}, 
                icon: Icon(
                  Icons.clear,
                  size: 30,
              ),
              ),
            ],
            
          ),
         const SizedBox(
            height: 35,
          ),
          RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: " Login ", 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
                ),
                 TextSpan(
                text: " Or ", 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  //fontWeight: FontWeight.bold,
                ),
                ),
                 TextSpan(
                text: " Sign Up ", 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
                ),

            ],
          ),
          ),
          const  SizedBox(
            height: 35,
          ),
          Container(
            height: 43,
            child: const TextField(
              keyboardType: TextInputType.number,
               style: TextStyle(
                  color: AppColor.captionColor,
                  fontSize: 13,
                 // fontWeight: FontWeight.bold,
                ),
              decoration: InputDecoration(
                labelText: "Mobile Number*",
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                 // fontWeight: FontWeight.bold,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 10, top: 13),
                  child: Text("+234 |", style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                 // fontWeight: FontWeight.bold,
                ),
                ),
                ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                  width: 1,
                  color: AppColor.captionColor,
                ),
                ),
                 focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.black54,
                ),
                ),
              ),
            ),
          ),
                const SizedBox(
            height: 25,
          ),
          RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: " By continuing, I agree to the  ", 
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 11.6,
                
                ),
                ),
                 TextSpan(
                text: " Term of Use ", 
                style: TextStyle(
                  color: AppColor.buttonColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                ),
                 TextSpan(
                text: " & ", 
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 11.6,
                  
                ),
                ),
                   TextSpan(
                text: " Privacy & Policy ", 
                style: TextStyle(
                 color: AppColor.buttonColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                ),

            ],
          ),
          ),
            const SizedBox(
            height: 30,
          ),
          const SpSolidButton(text: "CONTINUE"),

           const SizedBox(
            height: 35,
          ),

           RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: " Having trouble logging in?  ", 
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.5,
                
                ),
                ),
                 TextSpan(
                text: " Get Help ", 
                style: TextStyle(
                  color: AppColor.buttonColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
                ),
                

            ],
          ),
          ),
        ],
      ),
    );
  }
}