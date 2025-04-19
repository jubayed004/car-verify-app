import 'package:car_verify_app/core/components/custom_nav_bar/business_navbar.dart';
import 'package:car_verify_app/core/components/custom_nav_bar/employee_navbar.dart';
import 'package:car_verify_app/core/components/custom_nav_bar/user_navbar.dart';
import 'package:car_verify_app/core/features/business_section/Business_manage_employee/business_add_new_employee/business_add_new_employee_screen.dart';
import 'package:car_verify_app/core/features/business_section/Business_manage_employee/business_employee_details/business_edit_employee_details/business_edit_employee_details_screen.dart';
import 'package:car_verify_app/core/features/business_section/Business_manage_employee/business_employee_details/business_employee_details_screen.dart';
import 'package:car_verify_app/core/features/business_section/Business_manage_employee/business_search_employee/business_search_employee_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_add_car/business_add_car_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_all_car/business_all_car_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_manage_fleet/business_car_details/business_car_details_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_manage_fleet/business_edit_car_details/business_edit_car_details_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_manage_fleet/business_search_car/business_search_car_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_notification/business_notification_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_profile/business_edit_profile/business_edit_profile_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_profile/business_settings/business_change_password/Business_change_password_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_profile/business_settings/business_setting_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_scan_now/business_scan_now_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_view_all_report/Business_view_reports/business_view_reports_screen.dart';
import 'package:car_verify_app/core/features/business_section/business_view_details/business_details_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/business_create_account_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/create_new_password_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/forget_password_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/login_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/sign_up_screen.dart';
import 'package:car_verify_app/core/features/common_section/auth/verify_code_screen.dart';
import 'package:car_verify_app/core/features/common_section/subscription/payment/payment_screen.dart';
import 'package:car_verify_app/core/features/common_section/subscription/subscription_screen.dart';
import 'package:car_verify_app/core/features/common_section/terms_&_conditions/terms_and_condition_screen.dart';
import 'package:car_verify_app/core/features/employee_section/employee_add_car/employee_add_car_screen.dart';
import 'package:car_verify_app/core/features/employee_section/employee_notification/employee_notification_screen.dart';
import 'package:car_verify_app/core/features/employee_section/employee_profile/employee_edit_profile/employee_edit_profile_screen.dart';
import 'package:car_verify_app/core/features/employee_section/employee_profile/employee_settings/employee_change_password/employee_change_password_screen.dart';
import 'package:car_verify_app/core/features/employee_section/employee_profile/employee_settings/employee_setting_screen.dart';
import 'package:car_verify_app/core/features/user_section/add_car/add_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/car_details/car_details_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/edit_car_details/edit_car_details_screen.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/search_car/search_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/scan_now/capture_damage/capture_damage_screen.dart';
import 'package:car_verify_app/core/features/user_section/scan_now/scan_now_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/details_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/contact_support/contact_support_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/edit_profile/edit_profile_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/settings/change_password/change_password_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/settings/setting_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/subscription/subscription_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/search_report/search_report_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/damage_details/damage_details_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/view_reports_screen.dart';
import 'package:get/get.dart';
import '../features/employee_section/employee_profile/privacy_policy/privacy_policy_screen.dart';
import '../features/user_section/all_car/all_car_screen.dart';
import '../features/user_section/user_profile/subscription/payment/payment_screen.dart';






class AppRoutes {
  static const String loginScreen = "/LoginScreen";
  static const String forgetPasswordScreen = "/ForgetPasswordScreen";
  static const String verifyCodeScreen = "/VerifyCodeScreen";
  static const String createNewPasswordScreen = "/CreateNewPasswordScreen";
  static const String signUpScreen = "/SignUpScreen";
  static const String businessCreateAccountScreen = "/BusinessCreateAccountScreen";
  static const String userNavbar = "/userNavbar";
  static const String businessNavbar = "/BusinessNavbar";
  static const String viewDetailsScreen = "/ViewDetailsScreen";
  static const String viewReportsScreen = "/ViewReportsScreen";
  static const String damageDetailsScreen = "/DamageDetailsScreen";
  static const String searchReportScreen = "/SearchReportScreen";
  static const String searchCarScreen = "/SearchCarScreen";
  static const String carDetailsScreen = "/CarDetailsScreen";
  static const String editCarDetailsScreen = "/EditCarDetailsScreen";
  static const String subscriptionScreen = "/SubscriptionScreen";
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

  static const String businessInspectionScreen = "/BusinessInspectionScreen";
  static const String businessEditProfileScreen = "/BusinessEditProfileScreen";
  static const String businessSettingScreen = "/BusinessSettingScreen";
  static const String businessManageFleetScreen = "/BusinessManageFleetScreen";
  static const String businessManageEmployeeScreen = "/BusinessManageEmployee";
  static const String businessEmployeeDetailsScreen = "/BusinessEmployeeDetailsScreen";
  static const String businessAddNewEmployeeScreen = "/BusinessAddNewEmployeeScreen";
  static const String businessEditEmployeeDetailsScreen = "/BusinessEditEmployeeDetailsScreen";
  static const String businessSearchEmployeeScreen = "/BusinessSearchEmployeeScreen";
  static const String businessNotificationScreen = "/BusinessNotificationScreen";
  static const String businessViewDetailsScreen = "/BusinessViewDetailsScreen";
  static const String businessAddCarScreen = "/BusinessAddCarScreen";
  static const String businessChangePasswordScreen = "/BusinessChangePasswordScreen";
  static const String paymentScreen = "/PaymentScreen";
  static const String employeeNavbar = "/EmployeeNavbar";
  static const String employeeEditProfileScreen = "/EmployeeEditProfileScreen";
  static const String employeeSettingScreen = "/EmployeeSettingScreen";
  static const String employeeChangePasswordScreen = "/EmployeeChangePasswordScreen";
  static const String employeeViewReportScreen = "/EmployeeViewReportScreen";
  static const String employeeNotificationScreen = "/EmployeeNotificationScreen";
  static const String employeeAddCarScreen = "/EmployeeAddCarScreen";
  static const String userSubscriptionScreen = "/UserSubscriptionScreen";
  static const String userPaymentScreen = "/UserPaymentScreen";
  static const String businessCarDetailsScreen = "/BusinessCarDetailsScreen";
  static const String captureDamageScreen = "/CaptureDamageScreen";
  static const String businessViewReportsScreen = "/BusinessViewReportsScreen";
  static const String businessScanNowScreen = "/BusinessScanNowScreen";
  static const String businessAllCarScreen = "/BusinessAllCarScreen";
  static const String businessViewAllReportScreen = "/BusinessViewAllReportScreen";
  static const String businessSearchCarScreen = "/BusinessSearchCarScreen";
  static const String businessEditCarDetailsScreen = "/BusinessEditCarDetailsScreen";


  static List<GetPage> routes = [

    ///====================Common Screen======================///
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: forgetPasswordScreen, page: () => const ForgetPasswordScreen()),
    GetPage(name: verifyCodeScreen, page: () => const VerifyCodeScreen()),
    GetPage(name: createNewPasswordScreen, page: () =>  CreateNewPasswordScreen()),
    GetPage(name: signUpScreen, page: () => const SignUpScreen()),
    GetPage(name: businessCreateAccountScreen, page: () => BusinessCreateAccountScreen()),
    GetPage(name: paymentScreen, page: () => PaymentScreen()),
    GetPage(name: termsAndConditionScreen, page: () => TermsAndConditionScreen()),
    GetPage(name: privacyPolicyScreen, page: () => PrivacyPolicyScreen()),
    GetPage(name: captureDamageScreen, page: () => CaptureDamageScreen()),

    ///=================> User Section ============////
    GetPage(name: userNavbar, page: () => UserNavbar(currentIndex: Get.arguments??0,)),
    GetPage(name: businessNavbar, page: () => BusinessNavbar(currentIndex: Get.arguments??0,)),
    GetPage(name: employeeNavbar, page: () => EmployeeNavbar(currentIndex: Get.arguments??0,)),
    GetPage(name: viewDetailsScreen, page: () => ViewDetailsScreen()),
    GetPage(name: viewReportsScreen, page: () => ViewReportsScreen()),
    GetPage(name: damageDetailsScreen, page: () => DamageDetailsScreen()),
    GetPage(name: searchReportScreen, page: () => SearchReportScreen()),
    GetPage(name: searchCarScreen, page: () => SearchCarScreen()),
    GetPage(name: carDetailsScreen, page: () => CarDetailsScreen()),
    GetPage(name: editCarDetailsScreen, page: () => EditCarDetailsScreen()),
    GetPage(name: allCarScreen, page: () => AllCarScreen()),
    GetPage(name: addCarScreen, page: () => AddCarScreen()),
    GetPage(name: scanNowScreen, page: () => ScanNowScreen()),
    ///=================> User Profile ============////
    GetPage(name: editProfileScreen, page: () => EditProfileScreen()),
    GetPage(name: settingScreen, page: () => SettingScreen()),
    GetPage(name: changePasswordScreen, page: () => ChangePasswordScreen()),
    GetPage(name: contactSupportScreen, page: () => ContactSupportScreen()),


    ///=================> Business Section ============////
    GetPage(name: businessViewDetailsScreen, page: () => BusinessViewDetailsScreen()),

    GetPage(name: businessViewReportsScreen, page: () => BusinessViewReportsScreen()),
    GetPage(name: businessAddCarScreen, page: () => BusinessAddCarScreen()),
    GetPage(name: businessScanNowScreen, page: () => BusinessScanNowScreen()),

    GetPage(name: businessNotificationScreen, page: () => BusinessNotificationScreen()),
    GetPage(name: subscriptionScreen, page: () => SubscriptionScreen()),
    //GetPage(name: userSubscriptionScreen, page: () => UserSubscriptionScreen()),
    GetPage(name: userPaymentScreen, page: () => UserPaymentScreen()),
    GetPage(name: businessAllCarScreen, page: () => BusinessAllCarScreen()),
    GetPage(name: businessSearchCarScreen, page: () => BusinessSearchCarScreen()),


    ///=================> Business Profile ============////
    GetPage(name: businessEditProfileScreen, page: () => BusinessEditProfileScreen()),
    GetPage(name: businessSettingScreen, page: () => BusinessSettingScreen()),
    GetPage(name: businessChangePasswordScreen, page: () => BusinessChangePasswordScreen()),
    ///=================> Business Manage Employee ============////

    GetPage(name: businessEmployeeDetailsScreen, page: () => BusinessEmployeeDetailsScreen()),
    GetPage(name: businessAddNewEmployeeScreen, page: () => BusinessAddNewEmployeeScreen()),
    GetPage(name: businessEditEmployeeDetailsScreen, page: () => BusinessEditEmployeeDetailsScreen()),
    GetPage(name: businessSearchEmployeeScreen, page: () => BusinessSearchEmployeeScreen()),
    GetPage(name: businessCarDetailsScreen, page: () => BusinessCarDetailsScreen()),
    GetPage(name: businessEditCarDetailsScreen, page: () => BusinessEditCarDetailsScreen()),

    ///=================> Employee Profile ============////
    GetPage(name: employeeEditProfileScreen, page: () => EmployeeEditProfileScreen()),
    GetPage(name: employeeSettingScreen, page: () => EmployeeSettingScreen()),
    GetPage(name: employeeChangePasswordScreen, page: () => EmployeeChangePasswordScreen()),

    ///=================> Employee ============////
    GetPage(name: employeeNotificationScreen, page: () => EmployeeNotificationScreen()),
    GetPage(name: employeeAddCarScreen, page: () => EmployeeAddCarScreen()),


  ];
}

