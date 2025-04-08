import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/controller/user_profile_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:country_code_picker/country_code_picker.dart'
    show CountryCodePicker;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessEditProfileScreen extends StatelessWidget {
  BusinessEditProfileScreen({super.key});
  final UserProfileController userProfileController =
      Get.find<UserProfileController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Edit Profile",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: "Business Account Information",
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              bottom: 20,
            ),
            CustomText(
              text: "Business Name",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              fillColor: AppColors.white,
            ),
            CustomText(
              text: "Email address",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 14,
            ),
            CustomTextField(
              fillColor: AppColors.white,
              prefixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.appColors,
              ),
            ),
            CustomText(
              text: "Contact",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 14,
            ),
            CustomTextField(
              isDens: true,
              prefixIcon: CountryCodePicker(
                onChanged: (code) {
                  userProfileController.selectedCountryCode.value =
                      code.dialCode!;
                },
                initialSelection: 'BD',
                favorite: ['+880', 'US', 'IN'],
                showFlag: true,
                showDropDownButton: true,
                alignLeft: false,
              ),
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
            ),
            CustomText(
              text: "Account Owner Information",
              fontWeight: FontWeight.w600,
              fontSize: 20,
              bottom: 20,
              top: 20,
            ),
            CustomText(
              text: "Name",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              fillColor: AppColors.white,
            ),
            CustomText(
              text: "Position",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 14,
            ),
            CustomTextField(
              fillColor: AppColors.white,
            ),
            CustomText(
              text: "Email",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 14,
            ),
            CustomTextField(
              fillColor: AppColors.white,
              prefixIcon: Icon(
                Icons.email_outlined,
                color: AppColors.appColors,
              ),
            ),
            CustomText(
              text: "Contact",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 14,
            ),
            CustomTextField(
              
              isDens: true,
              prefixIcon: CountryCodePicker(


                onChanged: (code) {userProfileController.selectedCountryCode.value = code.dialCode!;},
                initialSelection: 'BD',
                favorite: ['+880', 'US', 'IN'],
                showFlag: true,
                showDropDownButton: true,
                alignLeft: false,
              ),
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            CustomGradientButton(text: " Save Changes", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
