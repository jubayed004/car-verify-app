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
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImage(
                  height: 150.h,
                  imageSrc: AppImages.oongoingcar,
                  fit: BoxFit.fill),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        top: 10,
                        textAlign: TextAlign.start,
                        text: "Registration no : 12545206",
                        fontWeight: FontWeight.bold,
                        maxLines: 2,
                        bottom: 6),
                    CustomText(
                      text: "Model : Landcruiser ",
                      bottom: 6,
                    ),
                    CustomText(text: "Making year : 2022", bottom: 6),
                    CustomText(text: "Brand : Toyota", bottom: 10),
                    CustomGradientButton(
                      text: "View details",
                      onPressed: () {
                        //Get.toNamed(AppRoutes.viewDetailsScreen);
                        // Get.toNamed(AppRoutes.viewDetailsScreen);
                      },
                      width: 100.w,
                      hight: 30.h,
                      size: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 8),

            ],
          ),
        )
          ],
        ),
      ),
    );
  }
}
