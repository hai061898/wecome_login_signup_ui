import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wll/routes/routes.dart';
import 'package:wll/utils/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome-login-logout',
      theme: ThemeData(  
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kPrimaryColor,
      ),
      initialRoute: RoutesName.WELCOME,
      getPages: RoutesPage.routes,

    );
  }
}