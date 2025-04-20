import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/features/common_section/auth/inner_widgets/choose_catagory_alert_dialog_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: CustomText(
        text: "Log in",
        color: Color(0xff0077CC),
        fontSize: 20,
        fontWeight: FontWeight.w700,
      )),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 24, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: CustomImage(imageSrc: AppImages.carVrifyTwo)),
            CustomText(
              text: "Email",
              top: 24,
              bottom: 8,
            ),
            CustomTextField(
              hintText: "Enter your email",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomText(
              text: "Password",
              top: 14,
              bottom: 8,
            ),
            CustomTextField(
              hintText: "Enter your password",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
              isPassword: true,
            ),
            SizedBox(
              height: 14.h,
            ),
            Align(
              alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: (){
                     Get.toNamed(AppRoutes.forgetPasswordScreen);
                  },
                  child: CustomText(
                    text: "Forgot password?",
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColors.appColors,
                    bottom: 32,
                  ),
                ),
            ),
            CustomGradientButton(text: 'Log in', onPressed: () {
              showDialog(
                  context: context,
                  barrierDismissible:
                  false, // Prevent closing by tapping outside
                  builder: (BuildContext context) {
                    return ChooseCatagoryAlertDialogScreen();
                  });


            },),
            SizedBox(height: 14.h,),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don’t have an account ?  ',
                  style: TextStyle(color: AppColors.n2, fontSize: 16,fontWeight: FontWeight.w400 ),
                  children: [
                    TextSpan(
                      text: "Sign up now",
                      style: TextStyle(color: AppColors.appColors),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                        Get.toNamed(AppRoutes.signUpScreen);
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
