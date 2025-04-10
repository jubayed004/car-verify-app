import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/features/common_section/auth/controller/auth_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;

class BusinessCreateAccountScreen extends StatelessWidget {
  BusinessCreateAccountScreen({super.key});
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Create Account",
        colors: AppColors.appColors,
        iconColors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
                child: CustomText(
                  top: 20,
                  bottom: 44,
              text: "Account Owner information",
              fontSize: 20,
              fontWeight: FontWeight.w700,
                  color: AppColors.appColors,
            )),

            ///=================> Name  Section <==============///
            CustomText(
              text: "Name",
              top: 20,
              bottom: 8,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),

            CustomTextField(
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.name,
            ),

            ///=================> Position <==============///
            CustomText(
              text: "Position",
              top: 20,
              bottom: 8,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            CustomTextField(

              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.name,
            ),

            ///====================> Email Section <=====================///
            CustomText(
              text: "Email Address",
              top: 14,
              bottom: 8,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            CustomTextField(
              prefixIcon:
                  Icon(Icons.email_outlined, color: AppColors.appColors),
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
            ),

            ///====================> Contact Section <=====================///
            CustomText(
              text: "Contact",
              top: 14,
              bottom: 8,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            CustomTextField(
              prefixIcon: CountryCodePicker(
                onChanged: (code) {
                  authController.selectedCountryCode.value = code.dialCode!;
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



            SizedBox(
              height: 24.h,
            ),

            ///====================> Sign Up Section <=====================///
            CustomGradientButton(
              text: 'Submit',
              onPressed: () {
                Get.toNamed(AppRoutes.userNavbar);
              },
            ),
            SizedBox(
              height: 14.h,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                      color: AppColors.n2,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                      text: "Login",
                      style: TextStyle(color: AppColors.appColors),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(AppRoutes.loginScreen);
                        },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
