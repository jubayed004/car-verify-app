// ignore_for_file: prefer_const_constructors
import 'package:car_verify_app/core/features/auth/create_new_password_screen.dart';
import 'package:car_verify_app/core/features/auth/forget_password_screen.dart';
import 'package:car_verify_app/core/features/auth/login_screen.dart';
import 'package:car_verify_app/core/features/auth/sign_up_screen.dart';
import 'package:car_verify_app/core/features/auth/verify_code_screen.dart';
import 'package:car_verify_app/core/features/my_test_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/car_details/car_details_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/manage_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/search_car/search_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/user_home_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/details_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/all_reports_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/search_report/search_report_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/damage_details/damage_details_screen.dart';
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
  static const String damageDetailsScreen = "/DamageDetailsScreen";
  static const String searchReportScreen = "/SearchReportScreen";
  static const String manageCarScreen = "/ManageCarScreen";
  static const String allReportsScreen = "/AllReportsScreen";
  static const String searchCarScreen = "/SearchCarScreen";
  static const String carDetailsScreen = "/CarDetailsScreen";

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: forgetPasswordScreen, page: () => const ForgetPasswordScreen()),
    GetPage(name: verifyCodeScreen, page: () => const VerifyCodeScreen()),
    GetPage(name: createNewPasswordScreen, page: () => const CreateNewPasswordScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),


    ///=================> User Home ============////
    GetPage(name: userHomeScreen, page: () => UserHomeScreen()),
    GetPage(name: allReportsScreen, page: () => AllReportsScreen()),

    GetPage(name: viewDetailsScreen, page: () => ViewDetailsScreen()),
    GetPage(name: viewReportsScreen, page: () => ViewReportsScreen()),
    GetPage(name: damageDetailsScreen, page: () => DamageDetailsScreen()),
    GetPage(name: searchReportScreen, page: () => SearchReportScreen()),
    GetPage(name: manageCarScreen, page: () => ManageCarScreen()),
    GetPage(name: searchCarScreen, page: () => SearchCarScreen()),
    GetPage(name: carDetailsScreen, page: () => CarDetailsScreen()),
  ];
}

