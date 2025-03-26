// ignore_for_file: prefer_const_constructors
import 'package:car_verify_app/core/features/auth/create_new_password_screen.dart';
import 'package:car_verify_app/core/features/auth/forget_password_screen.dart';
import 'package:car_verify_app/core/features/auth/login_screen.dart';
import 'package:car_verify_app/core/features/auth/sign_up_screen.dart';
import 'package:car_verify_app/core/features/auth/verify_code_screen.dart';
import 'package:car_verify_app/core/features/my_test_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/user_home_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/details_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/view_reports_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  static const String loginScreen = "/LoginScreen";
  static const String forgetPasswordScreen = "/ForgetPasswordScreen";
  static const String verifyCodeScreen = "/VerifyCodeScreen";
  static const String createNewPasswordScreen = "/CreateNewPasswordScreen";
  static const String signUpScreen = "/SignUpScreen";
  static const String userHomeScreen = "/UserHomeScreen";
  static const String viewDetailsScreen = "/ViewDetailsScreen";
  static const String viewReportsScreen = "/ViewReportsScreen";

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: forgetPasswordScreen, page: () => const ForgetPasswordScreen()),
    GetPage(name: verifyCodeScreen, page: () => const VerifyCodeScreen()),
    GetPage(name: createNewPasswordScreen, page: () => const CreateNewPasswordScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),

    ///=================> User Home ============////
    GetPage(name: userHomeScreen, page: () => UserHomeScreen()),
    GetPage(name: viewDetailsScreen, page: () => ViewDetailsScreen()),
    GetPage(name: viewReportsScreen, page: () => ViewReportsScreen()),
  ];
}

