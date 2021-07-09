import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wll/routes/routes.dart';
import 'package:wll/widgets/backgroud.dart';
import 'package:wll/widgets/no_account.dart';
import 'package:wll/widgets/ounded_password_field.dart.dart';
import 'package:wll/widgets/rounded_button.dart';
import 'package:wll/widgets/rounded_input_field.dart';

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
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Get.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: Get.height * 0.35,
            ),
             SizedBox(height: Get.height * 0.03),
               RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: Get.height * 0.03),
             AlreadyHaveAnAccountCheck(
              press: () => Get.toNamed(RoutesName.SIGNUP)
            ),
          ],
        ),
      ),
    );
  }
}