import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/common_section/auth/controller/auth_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final controller = GetControllers.instance.getAuthController();

  @override
  void initState() {

    super.initState();
  }

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
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User type selection - Car Owner or Business
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Car Owner
                  Row(
                    children: [
                      Radio<String>(
                        value: "Car Owner",
                        groupValue: controller.chooseUser.value,
                        onChanged: (value) {
                          controller.chooseUser.value = value!;
                        },
                        fillColor: WidgetStatePropertyAll(AppColors.appColors),
                      ),
                      CustomText(
                        text: "Car Owner",
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ],
                  ),
                  // Business
                  Row(
                    children: [
                      Radio<String>(
                        value: "Business",
                        groupValue: controller.chooseUser.value,
                        onChanged: (value) {
                          controller.chooseUser.value = value!;
                        },
                        fillColor: WidgetStatePropertyAll(AppColors.appColors),
                      ),
                      CustomText(
                        text: "Business",
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Conditionally render forms based on the selected user type
              if (controller.chooseUser.value == "Car Owner") ...[
                // Business Fields
                // First Name & Last Name
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "First Name",
                          bottom: 8,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
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
                        CustomText(
                          text: "Last Name",
                          bottom: 8,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
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
                // Contact Section for Business
                CustomText(
                  text: "Contact",
                  top: 14,
                  bottom: 8,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextField(
                  isDens: true,
                  prefixIcon: CountryCodePicker(
                    onChanged: (code) {
                      controller.selectedCountryCode.value = code.dialCode!;
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
                // Gender Section
                CustomText(
                  text: "Gender",
                  top: 14,
                  bottom: 8,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
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
                      value: controller.selectedGender.value.isEmpty
                          ? null
                          : controller.selectedGender.value,
                      hint: Text("Select Gender"),
                      isExpanded: true,
                      items: ["Male", "Female"].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {
                        controller.selectedGender.value = value!;
                      },
                    ),
                  ),
                ),
                // Date of Birth Section
                CustomText(
                  text: "Date of Birth",
                  top: 14,
                  bottom: 8,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextField(
                  prefixIcon: Row(
                    children: [
                      IconButton(
                        onPressed: () async {
                          await controller.pickDate();
                        },
                        icon: Icon(
                          Icons.calendar_month,
                          color: AppColors.appColors,
                        ),
                      ),
                      CustomText(
                        text: controller.selectedDate.value != null
                            ? DateFormat('dd/MM/yyyy')
                            .format(controller.selectedDate.value!)
                            : "Today",
                        fontSize: 12.w,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor_01,
                      )
                    ],
                  ),
                  fieldBorderColor: AppColors.textFiledBorderColor,
                  fieldBorderRadius: 10,
                  fillColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomText(
                  text: "Password",
                  top: 14,
                  bottom: 8,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,

                ),
                CustomTextField(
                  fieldBorderColor: AppColors.textFiledBorderColor,
                  fieldBorderRadius: 10,
                  fillColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
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
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
                CustomTextField(
                  fieldBorderColor: AppColors.textFiledBorderColor,
                  fieldBorderRadius: 10,
                  fillColor: Colors.white,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value ==null) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),

                // Next Button
                CustomGradientButton(
                  text: "Sign Up",
                  onPressed: () {
                    Get.toNamed(AppRoutes.userNavbar);
                  },
                ),
                SizedBox(height: 14.h),
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
                ),

              ] else if (controller.chooseUser.value == "Business") ...[
                /// Name Section
                CustomText(
                  text: "Business Name",
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
                // Email Section
                CustomText(
                  text: "Email Address",
                  top: 14,
                  bottom: 8,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextField(
                  prefixIcon: Icon(Icons.email_outlined, color: AppColors.appColors),
                  fieldBorderColor: AppColors.textFiledBorderColor,
                  fieldBorderRadius: 10,
                  fillColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                ),
                // Contact Section
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
                      controller.selectedCountryCode.value = code.dialCode!;
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
                // Password Section
                CustomText(
                  text: "Password",
                  top: 14,
                  bottom: 8,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextField(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  fieldBorderColor: AppColors.textFiledBorderColor,
                  fieldBorderRadius: 10,
                  fillColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                ),
                // Confirm Password Section
                CustomText(
                  text: "Confirm password",
                  top: 14,
                  bottom: 8,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
                CustomTextField(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  fieldBorderColor: AppColors.textFiledBorderColor,
                  fieldBorderRadius: 10,
                  fillColor: Colors.white,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),

                // Next Button
                CustomGradientButton(
                  text: "Next",
                  onPressed: () {
                    Get.toNamed(AppRoutes.businessCreateAccountScreen);
                  },
                ),
                SizedBox(height: 14.h),
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
                ),
              ],


            ],
          );
        }),
      ),
    );
  }
}
