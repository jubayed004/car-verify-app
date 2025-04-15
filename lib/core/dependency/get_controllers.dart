
import 'package:car_verify_app/core/features/business_section/business_home/controller/business_home_controller.dart';
import 'package:car_verify_app/core/features/common_section/auth/controller/auth_controller.dart';
import 'package:car_verify_app/core/features/common_section/subscription/controller/subscription_controller.dart';
import 'package:car_verify_app/core/features/employee_section/employee_home/controller/employee_home_controller.dart';
import 'package:car_verify_app/core/features/employee_section/employee_profile/controller/user_profile_controller.dart';
import 'package:car_verify_app/core/features/user_section/user_home/controller/user_home_controller.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/controller/view_details_controller.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/controller/user_profile_controller.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/damage_details/controller/damage_details_controller.dart';
import 'package:get/get.dart';



class GetControllers {
  static final GetControllers _singleton = GetControllers._internal();

  GetControllers._internal();

  static GetControllers get instance => _singleton;


/*

  ///  Jode kono app er controller permanent lage tahole permanent ture kore dibo==========      Get.put(LanguageController(),permanent: true); ========///

  LanguageController getLanguageController() {
    if (!Get.isRegistered<LanguageController>()) {
      Get.put(LanguageController(),permanent: true);
    }
    return Get.find<LanguageController>();
  }
*/
  AuthController getAuthController() {
    if (!Get.isRegistered<AuthController>()) {
      return Get.put(AuthController());
    }
    return Get.find<AuthController>();
  }

  HomeController getHomeController() {
    if (!Get.isRegistered<HomeController>()) {
      return Get.put(HomeController());
    }
    return Get.find<HomeController>();
  }


  ViewDetailsController getViewDetailsController() {
    if (!Get.isRegistered<ViewDetailsController>()) {
      return Get.put(ViewDetailsController());
    }
    return Get.find<ViewDetailsController>();
  }


  DamageDetailsController getDamageDetailsController() {
    if (!Get.isRegistered<DamageDetailsController>()) {
      return Get.put(DamageDetailsController());
    }
    return Get.find<DamageDetailsController>();
  }

  UserProfileController getUserProfileController() {
    if (!Get.isRegistered<UserProfileController>()) {
      return Get.put(UserProfileController());
    }
    return Get.find<UserProfileController>();
  }

  BusinessHomeController getBusinessHomeController() {
    if (!Get.isRegistered<BusinessHomeController>()) {
      return Get.put(BusinessHomeController());
    }
    return Get.find<BusinessHomeController>();
  }

  SubscriptionController getSubscriptionController() {
    if (!Get.isRegistered<SubscriptionController>()) {
      return Get.put(SubscriptionController());
    }
    return Get.find<SubscriptionController>();
  }

  EmployeeHomeController getEmployeeHomeController() {
    if (!Get.isRegistered<EmployeeHomeController>()) {
      return Get.put(EmployeeHomeController());
    }
    return Get.find<EmployeeHomeController>();
  }


  EmployeeProfileController getEmployeeProfileController() {
    if (!Get.isRegistered<EmployeeProfileController>()) {
      return Get.put(EmployeeProfileController());
    }
    return Get.find<EmployeeProfileController>();
  }



}
