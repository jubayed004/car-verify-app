import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';

class BusinessNotificationScreen extends StatelessWidget {
  const BusinessNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Manage Fleet",
        leftIcon: true,
        colors: AppColors.appColors,
        rightIcon: Icon(
          Icons.search,
          color: AppColors.appColors,
          size: 26,
        ),
        rightOnPressed: () {
          Get.toNamed(AppRoutes.searchCarScreen);
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///=====================Clear All Button=============///
            Align(
              alignment: Alignment.topRight,
              child: CustomText(
                text: "Clear All",
                fontWeight: FontWeight.w400,
                color: AppColors.appColors,
                fontSize: 16.sp,
                bottom: 6.h,
              ),
            ),
            Divider(
              height: 2.h,
              color: AppColors.dividerColor,
            ),
            SizedBox(height: 24.h),

            ///======================== Notification List===============///
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10, // Example: 2 notifications in this case
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: _notificationItem(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _notificationItem() {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: AppColors.notificationBgColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        children: [
          ///=========== Profile
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.w, color: AppColors.appColors),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: CustomImage(
                imageSrc: AppImages.businessProfileImage,
                width: 32.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          // Notification Content
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Mr. Fahad ',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.appColors,
                    ),
                  ),
                  TextSpan(
                    text: 'has added a car',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.n2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.w),

          ///============= Time
          CustomText(
            text: '9 min ago',
            fontSize: 12.sp,
            color: AppColors.n2,
          ),
        ],
      ),
    );
  }
}
