import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/features/auth/controller/auth_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<String>(
                    value: "Car Owner",
                    groupValue: authController.chooseUser.value,
                    onChanged: (value) {
                      authController.chooseUser.value = value!;
                    },
                    fillColor: WidgetStatePropertyAll(AppColors.appColors),
                  ),
                  CustomText(text: "Car Owner",right: 56,),
                  Radio<String>(
                    value: "Business",
                    groupValue: authController.chooseUser.value,
                    onChanged: (value) {
                      authController.chooseUser.value = value!;
                    },
                    fillColor: WidgetStatePropertyAll(AppColors.appColors),
                  ),
                  CustomText(text: "Business"),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "First Name", bottom: 8,fontSize: 16.sp,fontWeight: FontWeight.w600,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.4,
                        child: CustomTextField(
                          fieldBorderColor: AppColors.textFiledBorderColor,
                          fieldBorderRadius: 10,
                          fillColor: Colors.white,
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Last Name", bottom: 8,fontSize: 16.sp,fontWeight: FontWeight.w600,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.4,
                        child: CustomTextField(
                          fieldBorderColor: AppColors.textFiledBorderColor,
                          fieldBorderRadius: 10,
                          fillColor: Colors.white,
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              CustomText(text: "Email Address", top: 14, bottom: 8,fontSize: 16.sp,fontWeight: FontWeight.w600,),
              CustomTextField(
                prefixIcon: Icon(Icons.email_outlined, color: AppColors.appColors),
                fieldBorderColor: AppColors.textFiledBorderColor,
                fieldBorderRadius: 10,
                fillColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
              ),
              CustomText(text: "Contact", top: 14, bottom: 8,fontSize: 16.sp,fontWeight: FontWeight.w600,),
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
              CustomText(text: "Gender", top: 14, bottom: 8,fontSize: 16.sp,fontWeight: FontWeight.w600,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.textFiledBorderColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconEnabledColor: AppColors.appColors,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    dropdownColor: Colors.white,
                    value: authController.selectedGender.value.isEmpty
                        ? null
                        : authController.selectedGender.value,
                    hint: Text("Select Gender"),
                    isExpanded: true,
                    items: ["Male", "Female"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),

                      );
                    }).toList(),
                    onChanged: (value) {
                      authController.selectedGender.value = value!;
                    },
                  ),
                ),
              ),

              CustomText(text: "Date of Birth", top: 14, bottom: 8,fontSize: 16.sp,fontWeight: FontWeight.w600,),
              CustomTextField(
                prefixIcon: Icon(Icons.calendar_month, color: AppColors.appColors),
                fieldBorderColor: AppColors.textFiledBorderColor,
                fieldBorderRadius: 10,
                fillColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
              ),

              CustomText(text: "Password", top: 14, bottom: 8,fontSize: 16.sp,fontWeight: FontWeight.w600,),
              CustomTextField(
              suffixIcon: Icon(Icons.remove_red_eye_rounded),
                fieldBorderColor: AppColors.textFiledBorderColor,
                fieldBorderRadius: 10,
                fillColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
              ),

              CustomText(text: "Confirm password", top: 14, bottom: 8,fontSize: 16.sp,fontWeight: FontWeight.w600,),
              CustomTextField(
                suffixIcon: Icon(Icons.remove_red_eye_rounded),
                fieldBorderColor: AppColors.textFiledBorderColor,
                fieldBorderRadius: 10,
                fillColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 14.h,),
              CustomGradientButton(text: 'Sign Up', onPressed: () {  },),
              SizedBox(height: 14.h,),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: AppColors.n2, fontSize: 16,fontWeight: FontWeight.w400 ),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(color: AppColors.appColors),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                           // Get.toNamed(AppRoutes.signUpScreen);
                          },
                      ),

                    ],
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
