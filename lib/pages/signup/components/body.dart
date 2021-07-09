import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wll/pages/signup/components/OrDivider.dart';
import 'package:wll/routes/routes.dart';
import 'package:wll/widgets/backgroud.dart';
import 'package:wll/widgets/no_account.dart';
import 'package:wll/widgets/ounded_password_field.dart.dart';
import 'package:wll/widgets/rounded_button.dart';
import 'package:wll/widgets/rounded_input_field.dart';

import 'social_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: Get.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: Get.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: Get.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () => Get.toNamed(RoutesName.LOGIN),
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
