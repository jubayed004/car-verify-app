// ignore_for_file: prefer_const_constructors
import 'package:car_verify_app/core/features/auth/create_new_password_screen.dart';
import 'package:car_verify_app/core/features/auth/forget_password_screen.dart';
import 'package:car_verify_app/core/features/auth/login_screen.dart';
import 'package:car_verify_app/core/features/auth/sign_up_screen.dart';
import 'package:car_verify_app/core/features/auth/verify_code_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  ///===========================Authentication==========================
  static const String loginScreen = "/LoginScreen";
  static const String forgetPasswordScreen = "/ForgetPasswordScreen";
  static const String verifyCodeScreen = "/VerifyCodeScreen";
  static const String createNewPasswordScreen = "/CreateNewPasswordScreen";
  static const String signUpScreen = "/SignUpScreen";

  static List<GetPage> routes = [
    ///===========================Authentication==========================
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: forgetPasswordScreen, page: () => ForgetPasswordScreen()),
    GetPage(name: verifyCodeScreen, page: () => VerifyCodeScreen()),
    GetPage(name: createNewPasswordScreen, page: () => CreateNewPasswordScreen()),
    GetPage(name: signUpScreen, page: () => SignUpScreen()),

  ];
}
