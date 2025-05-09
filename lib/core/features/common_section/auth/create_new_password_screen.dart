import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CreateNewPasswordScreen extends StatelessWidget {
   CreateNewPasswordScreen({super.key});
final TextEditingController _newPassword =TextEditingController();
final TextEditingController _confirmPassword =TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Set new password",
        colors: AppColors.appColors,
        iconColors: AppColors.appColors,
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.only(top: 24, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: CustomImage(imageSrc: AppImages.carVrifyTwo)),
            CustomText(
              text: "New password",
              top: 24,
              bottom: 8,
            ),
            CustomTextField(
              hintText: "********",
              textEditingController: _newPassword,
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              isPassword: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
            ),
            CustomText(
              text: "Confirm Password",
              top: 14,
              bottom: 8,
            ),
            CustomTextField(
              hintText: "********",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
              isPassword: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please confirm your password';
                }
                if (value != _newPassword.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            SizedBox(
              height: 14.h,
            ),
            CustomGradientButton(
              text: 'Submit',
              onPressed: () {
               Get.toNamed(AppRoutes.loginScreen);
              },
            ),

          ],
        ),
      ),
    );
  }
}
