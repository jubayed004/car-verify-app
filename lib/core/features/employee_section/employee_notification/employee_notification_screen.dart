import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';

class EmployeeNotificationScreen extends StatelessWidget {
  const EmployeeNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Notification",
        leftIcon: true,
        colors: AppColors.appColors,
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
              child: GestureDetector(
                onTap: (){

                },
                child: CustomText(
                  text: "Clear All",
                  fontWeight: FontWeight.w400,
                  color: AppColors.appColors,
                  fontSize: 16.sp,
                  bottom: 6.h,
                ),
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
          CircleAvatar(
            backgroundColor: AppColors.white,
            radius: 20.r,
            child: Icon(Icons.notifications_none,size: 24.sp,),
          ),
          /*Container(

            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.notifications_none,size: 24.sp,)
          ),*/
          SizedBox(width: 12.w),
          // Notification Content
          CustomText(text: "You have been assigned a car",fontWeight: FontWeight.w600,fontSize: 16.sp,color: AppColors.appColors,),
          SizedBox(width: 8.w),
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
