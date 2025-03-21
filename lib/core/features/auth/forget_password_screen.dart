import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Forget Password",
        colors: AppColors.appColors,
        iconColors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 80,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: CustomImage(imageSrc: AppImages.carverifyimage)),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text: "Enter your email to reset your password",
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                color: AppColors.appColors,
                top: 56,
                bottom: 16,
              ),
            ),
            CustomText(text: "Email",fontSize: 16.sp,fontWeight: FontWeight.w600,bottom: 8,),
            CustomTextField(
              hintText: "Enter your email",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 32.h,),
            CustomGradientButton(text: "Submit", onPressed: (){
              Get.toNamed(AppRoutes.verifyCodeScreen);
            }),


          ],
        ),
      ),
    );
  }
}
