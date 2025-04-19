import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessEditCarDetailsScreen extends StatelessWidget {
  const BusinessEditCarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Edit car details",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Registration no",fontWeight: FontWeight.w600,fontSize: 16.sp,bottom: 8,),
            CustomTextField(hintText: "Type here....",fillColor: Colors.white,hintStyle: TextStyle(fontSize: 16.sp)),
            SizedBox(height: 14.h),
            CustomText(text: "Model ",fontWeight: FontWeight.w600,fontSize: 16.sp,bottom: 8,),
            CustomTextField(hintText: "Type here....",fillColor: Colors.white,hintStyle: TextStyle(fontSize: 16)),
            SizedBox(height: 14.h),
            CustomText(text: "Vehicle year ",fontWeight: FontWeight.w600,fontSize: 16.sp,bottom: 8,),
            CustomTextField(hintText: "Type here....",fillColor: Colors.white,hintStyle: TextStyle(fontSize: 16.sp)),
            SizedBox(height: 14.h),
            CustomText(text: "Make",fontWeight: FontWeight.w600,fontSize: 16.sp,bottom: 8,),
            CustomTextField(hintText: "Type here....",fillColor: Colors.white,hintStyle: TextStyle(fontSize: 16.sp),),
            CustomText(text: "Assigned Employee",fontWeight: FontWeight.w600,fontSize: 16.sp,top: 14,bottom: 10,),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffE2E2E2),width: 1.w)
                ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/6,),
            CustomGradientButton(
                fontWeight: FontWeight.w700,
                size: 18,
                text: "Save Changes", onPressed: (){
              Get.back();
            })

          ],
        ),
      ),
    );
  }
}
