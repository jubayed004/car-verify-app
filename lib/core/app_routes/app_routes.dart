// ignore_for_file: prefer_const_constructors
import 'package:car_verify_app/core/features/business_section/business_home/business_home_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/create_new_password_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/forget_password_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/login_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/sign_up_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/verify_code_screen.dart';
import 'package:car_verify_app/core/features/user_section/add_car/add_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/car_list/all_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/car_details/car_details_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/edit_car_details/edit_car_details_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/manage_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/search_car/search_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/scan_now/scan_now_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/user_home_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/details_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/contact_support/contact_support_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/edit_profile/edit_profile_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/privacy_policy/privacy_policy_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/settings/inner_widgets/change_password_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/settings/setting_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/terms_&_conditions/terms_and_condition_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/user_profile_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/all_reports_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/search_report/search_report_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/damage_details/damage_details_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/view_reports_screen.dart';
import 'package:get/get.dart';

import '../features/business_section/business_all_inspection/business_inspection_screen.dart' show BusinessInspectionScreen;
import '../features/business_section/business_view_report/business_view_report_screen.dart' show BusinessViewReportScreen;


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
  static const String editCarDetailsScreen = "/EditCarDetailsScreen";
  static const String userProfileScreen = "/UserProfileScreen";
  static const String editProfileScreen = "/EditProfileScreen";
  static const String settingScreen = "/SettingScreen";
  static const String changePasswordScreen = "/ChangePasswordScreen";
  static const String termsAndConditionScreen = "/TermsAndConditionScreen";
  static const String privacyPolicyScreen = "/PrivacyPolicyScreen";
  static const String contactSupportScreen = "/ContactSupportScreen";
  static const String allCarScreen = "/AllCarScreen";
  static const String addCarScreen = "/AddCarScreen";
  static const String scanNowScreen = "/ScanNowScreen";
  static const String businessHomeScreen = "/BusinessHomeScreen";
  static const String businessViewReportScreen = "/BusinessViewReportScreen";
  static const String businessInspectionScreen = "/BusinessInspectionScreen";

  static List<GetPage> routes = [

    ///====================Common Screen======================///
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: forgetPasswordScreen, page: () => const ForgetPasswordScreen()),
    GetPage(name: verifyCodeScreen, page: () => const VerifyCodeScreen()),
    GetPage(name: createNewPasswordScreen, page: () => const CreateNewPasswordScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),


    ///=================> User Section ============////
    GetPage(name: userHomeScreen, page: () => UserHomeScreen()),
    GetPage(name: allReportsScreen, page: () => AllReportsScreen()),
    GetPage(name: viewDetailsScreen, page: () => ViewDetailsScreen()),
    GetPage(name: viewReportsScreen, page: () => ViewReportsScreen()),
    GetPage(name: damageDetailsScreen, page: () => DamageDetailsScreen()),
    GetPage(name: searchReportScreen, page: () => SearchReportScreen()),
    GetPage(name: manageCarScreen, page: () => ManageCarScreen()),
    GetPage(name: searchCarScreen, page: () => SearchCarScreen()),
    GetPage(name: carDetailsScreen, page: () => CarDetailsScreen()),
    GetPage(name: editCarDetailsScreen, page: () => EditCarDetailsScreen()),
    GetPage(name: allCarScreen, page: () => AllCarScreen()),
    GetPage(name: addCarScreen, page: () => AddCarScreen()),
    GetPage(name: scanNowScreen, page: () => ScanNowScreen()),

    ///=================> User Profile ============////
    GetPage(name: userProfileScreen, page: () => UserProfileScreen()),
    GetPage(name: editProfileScreen, page: () => EditProfileScreen()),
    GetPage(name: settingScreen, page: () => SettingScreen()),
    GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen()),
    GetPage(name: termsAndConditionScreen, page: () => TermsAndConditionScreen()),
    GetPage(name: privacyPolicyScreen, page: () => PrivacyPolicyScreen()),
    GetPage(name: contactSupportScreen, page: () => ContactSupportScreen()),

    ///=================> Business Section ============////
    GetPage(name: businessHomeScreen, page: () => BusinessHomeScreen()),
    GetPage(name: businessViewReportScreen, page: () => BusinessViewReportScreen()),
    GetPage(name: businessInspectionScreen, page: () => BusinessInspectionScreen()),


  ];
}

