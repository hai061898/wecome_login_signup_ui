import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wll/utils/color.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.symmetric(vertical: Get.height * 0.02),
       width: Get.width,
       child: Row(  
         children: [
            buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
         ],
       ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(  
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}
