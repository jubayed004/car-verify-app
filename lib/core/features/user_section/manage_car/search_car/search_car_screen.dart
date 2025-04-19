import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/all_reports_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchCarScreen extends StatelessWidget {
  const SearchCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Search Car",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: "12344",
              fillColor: Color(0xffE5F4FF),
              isDens: true,
              prefixIcon: Icon(
                Icons.search,
                size: 25.sp,
                color: AppColors.black,
              ),
              suffixIcon: Icon(
                Icons.close,
                size: 25.sp,
                color: AppColors.appColors,
              ),
            ),
            CustomText(
              text: "Search result for “1234”",
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              top: 24,
              bottom: 24,
            ),
            Card(
          color: Colors.white,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImage(
                  imageSrc: AppImages.oongoingcar,
                  fit: BoxFit.fill),
               SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          top: 6,
                          textAlign: TextAlign.start,
                          text: "Registration no : ",
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          maxLines: 2,

                          bottom: 4,
                        ),

                        Flexible(
                          child: CustomText(
                            top: 6,
                            textAlign: TextAlign.start,
                            text: "1234524564256",
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColors.n2,
                            overflow: TextOverflow.ellipsis,
                            bottom: 4,
                            left: 4,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "Model : ",
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          bottom: 4,
                          color: Colors.black,
                        ),
                        CustomText(
                          text: "Landcruiser",
                          bottom: 4,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.n2,
                          left: 4,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "Making year : ",
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          bottom: 4,
                          color: Colors.black,
                        ),
                        CustomText(
                          text: "2022",
                          bottom: 4,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.n2,
                          left: 4,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "Brand : ",
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          bottom: 8,
                          color: Colors.black,
                        ),
                        CustomText(
                          text: "Toyota",
                          bottom: 8,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.n2,
                          left: 4,
                        ),
                      ],
                    ),
                    CustomGradientButton(
                      text: "Car details",
                      onPressed: () {
                        //Get.toNamed(AppRoutes.viewDetailsScreen);
                        Get.toNamed(AppRoutes.carDetailsScreen);
                      },
                      borderRadius: BorderRadius.circular(6),
                      width: 100.w,
                      hight: 24.h,
                      size: 12,
                      fontWeight: FontWeight.w400,
                    ),

                  ],
                ),
              ),


            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
