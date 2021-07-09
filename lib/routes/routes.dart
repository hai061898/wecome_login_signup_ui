import 'package:get/get.dart';
import 'package:wll/pages/login/login_page.dart';
import 'package:wll/pages/signup/signup_page.dart';
import 'package:wll/pages/welcome/welcome_page.dart';

class RoutesName {
  static const WELCOME = '/';
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
}

class RoutesPage {
  static final routes = [
    GetPage(name: RoutesName.WELCOME, page: ()=>WelcomeScreen()),
    GetPage(name: RoutesName.LOGIN, page: ()=>LoginScreen()),
    GetPage(name: RoutesName.SIGNUP, page: ()=>SignUpScreen()),

  ];
}
