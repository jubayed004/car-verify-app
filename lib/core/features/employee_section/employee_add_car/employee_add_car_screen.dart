import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmployeeAddCarScreen extends StatelessWidget {
  const EmployeeAddCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Add Car",
        colors: AppColors.appColors,
        leftIcon: true,
        leftOnPressed: (){
          //Get.offAllNamed(AppRoutes.userNavbar);
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Registration no",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              isDens: true,
              hintText: "Type here....",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,

            ),
            SizedBox(height: 14.h),
            CustomText(
              text: "Model",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              isDens: true,
              hintText: "Type here....",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,

            ),
            SizedBox(height: 14.h),
            CustomText(
              text: "Vehicle year",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              isDens: true,
              hintText: "Type here....",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,

            ),
            SizedBox(height: 14.h),
            CustomText(
              text: "Make",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              isDens: true,
              hintText: "Type here....",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,

            ),
            SizedBox(height: 14.h,),
            CustomText(
              text: "Add thumbnail",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              prefixIcon: Icon(Icons.image_outlined),
              isDens: true,
              hintText: "Image",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,

            ),
            SizedBox(height: 14.h,),
            CustomText(
              text: "Assign Employee",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            CustomTextField(
              isDens: true,
              hintText: "Search to select employee ",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.phone,
              suffixIcon: Icon(Icons.search,size: 24,color: AppColors.appColors,),
            ),
            SizedBox(height:MediaQuery.of(context).size.height/10),
            CustomGradientButton(text: "Save & Scan ", onPressed: (){
              Get.toNamed(AppRoutes.scanNowScreen);
            })
          ],
        ),
      ),
    );
  }
}
