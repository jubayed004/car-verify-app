import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:country_code_picker/country_code_picker.dart' show CountryCodePicker;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessAddNewEmployeeScreen extends StatelessWidget {
   BusinessAddNewEmployeeScreen({super.key});
   final controller = GetControllers.instance.getAuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Add New Employee",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: "Name",
              top: 20,
              bottom: 8,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            CustomTextField(
              hintText: 'Type here....',
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name is required';
                }
                if (value.length < 2) {
                  return 'Name must be at least 2 characters';
                }
                final nameRegex = RegExp(r'^[a-zA-Z\s]+$');
                if (!nameRegex.hasMatch(value)) {
                  return 'Name can only contain letters and spaces';
                }
                return null;
              },

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
              hintText: 'Type here....',
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10,
              fillColor: Colors.white,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                }
                final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                if (!emailRegex.hasMatch(value)) {
                  return 'Enter a valid email';
                }
                return null;
              },
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
            CustomText(
              text: "Password",
              top: 20,
              bottom: 8,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
            CustomTextField(
              hintText: 'XXXXXXXXXXX',
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
            SizedBox(height: 16.h),
            CustomText(
                text: 'Manage Access',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black),
            SizedBox(height: 10.h),
            _toggleRow('Add car', true),
            _toggleRow('View report', true),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            CustomGradientButton(
              fontWeight: FontWeight.w700,
                size: 18.sp,
                text: "Submit",
                onPressed: (){})
          ],
        ),
      ),
    );
  }


   Widget _toggleRow(String label, bool isEnabled) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         CustomText(text: label, fontSize: 16.sp, color: Colors.black),
         Transform.scale(
           scaleX: .9,
           scaleY: 0.8,
           child: Switch(
             padding: EdgeInsets.zero,
             value: isEnabled,
             onChanged: (val) {},
             activeColor: AppColors.white,
             activeTrackColor: AppColors.appColors,

           ),
         ),
       ],
     );
   }
}
