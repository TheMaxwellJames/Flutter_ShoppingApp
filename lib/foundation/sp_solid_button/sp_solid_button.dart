import 'package:flutter/material.dart';

import '../theme/colors.dart';

class SpSolidButton extends StatelessWidget {
  const SpSolidButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.buttonColor),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child:  Center(
                        child: Text(text),
                      ),
                    ),
                  );
  }
}