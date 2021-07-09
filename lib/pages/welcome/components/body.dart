import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wll/widgets/backgroud.dart';
import 'package:wll/routes/routes.dart';
import 'package:wll/utils/color.dart';
import 'package:wll/widgets/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(  
        child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Get.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: Get.height * 0.45,
            ),
             SizedBox(height: Get.height * 0.05),
              RoundedButton(
              text: "LOGIN",
              press: () =>Get.toNamed(RoutesName.LOGIN)
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () =>Get.toNamed(RoutesName.SIGNUP)
            ),
            ],
        ),
      ),
    );
  }
}