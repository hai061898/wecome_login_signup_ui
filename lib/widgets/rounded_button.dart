import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wll/utils/color.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({ 
    Key? key,
    this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
     }) : super(key: key);
  final String? text;
  final VoidCallback press;
  final Color color, textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: Get.width * 0.8,
      child: ClipRRect(  
        borderRadius: BorderRadius.circular(29),
        child: TextButton(  
          style: TextButton.styleFrom(
             padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
             backgroundColor: color,
          ),
          onPressed: press,
          child: Text(
            text!,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}