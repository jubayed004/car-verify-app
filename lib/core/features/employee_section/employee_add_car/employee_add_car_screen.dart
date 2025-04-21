import 'dart:io';

import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmployeeAddCarScreen extends StatelessWidget {
   EmployeeAddCarScreen({super.key});

  final controller = GetControllers.instance.getCarDetailsController();
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
            GestureDetector(
              onTap: controller.pickImageFromGallery,
              child: SizedBox(
                height: 156.h,
                width: double.infinity,
                child: Obx(() {
                  final image = controller.selectedImage.value?.path;
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: image != null && image.isNotEmpty ? ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.file(
                            File(controller.selectedImage.value?.path ?? ""),
                            height: 156.h,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            fit: BoxFit.cover,
                          ),
                        ) : CustomNetworkImage(
                            imageUrl: AppImages.profileImageOne,
                            height: 156.h,
                            borderRadius: BorderRadius.circular(6),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width
                        ),
                      ),
                      image != null && image.isNotEmpty ? SizedBox() : Center(
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xffC2C2C2,), width: 1.w),
                            color: AppColors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.image_outlined, size: 18.sp,
                              color: AppColors.appColors),
                        ),
                      ),
                    ],
                  );
                }),
              ),
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
              Get.toNamed(AppRoutes.employeeScanNowScreen);
            })
          ],
        ),
      ),
    );
  }
}
