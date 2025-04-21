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

class AddCarScreen extends StatelessWidget {
   AddCarScreen({super.key});

  final controller = GetControllers.instance.getUserProfileController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Add Car",
        colors: AppColors.appColors,
        leftIcon: true,
        leftOnPressed: (){
          Get.offAllNamed(AppRoutes.userNavbar);
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
              keyboardType: TextInputType.number,

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


            ),
            SizedBox(height: 14.h,),
            CustomText(
              text: "Add thumbnail",
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ),
            Obx(() {
              final image = controller.selectedImage.value;
              return image != null
                  ? Container(
                height: 140.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: FileImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              )
                  : CustomNetworkImage(
                imageUrl: AppImages.profileImageOne,
                height: 140.h,
                width: double.infinity,
                boxShape: BoxShape.rectangle,
              );
            }),
            Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              top: 20,
              child: GestureDetector(
                onTap: controller.pickImageFromGallery,
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC2C2C2,),width: 1.w),
                    color: AppColors.white,

                  ),
                  child:  Icon(Icons.image_outlined, size: 18.sp, color: AppColors.appColors),
                ),
              ),
            ),
           /* CustomTextField(
              prefixIcon: Icon(Icons.image_outlined),
              isDens: true,
              hintText: "Image",
              fieldBorderColor: AppColors.textFiledBorderColor,
              fieldBorderRadius: 10.r,
              fillColor: Colors.white,
              keyboardType: TextInputType.url,

            ),*/

            SizedBox(height:MediaQuery.of(context).size.height/10),
            CustomGradientButton(
              fontWeight: FontWeight.w700,
                size: 18,
                text: "Save Car & Scan ",
                onPressed: (){
              Get.toNamed(AppRoutes.scanNowScreen);
            })
          ],
        ),
      ),
    );
  }
}
