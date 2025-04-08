import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;

class BusinessChangePasswordScreen extends StatelessWidget {
  const BusinessChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Change Password",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Current Password",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              hintText: "Enter Current password",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
              isPassword: true,
            ),
            SizedBox(height: 14.h),
            CustomText(
              text: "New Password",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              hintText: "Enter New password",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
              isPassword: true,
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomText(
              text: "Confirm password",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              hintText: "Enter Confirm password",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
              isPassword: true,
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: (){
                //Get.toNamed(AppRoutes.forgetPasswordScreen);
              },
              child: CustomText(
                text: "Forgot password?",
                color: AppColors.appColors,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            CustomGradientButton(text: "Confirm", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
