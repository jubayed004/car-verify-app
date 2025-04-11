import 'package:car_verify_app/core/app_routes/app_routes.dart';
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

class BusinessSearchEmployeeScreen extends StatelessWidget {
  const BusinessSearchEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Search reports",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16,top: 20,bottom: 20),
            child: CustomTextField(
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
          ),
          CustomText(
            text: "Search result for “1234”",
            fontWeight: FontWeight.w600,
            fontSize: 18.sp,

            left: 16,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (_, index) => const DriverCard(),
            ),
          ),
        ],
      ),
    );
  }
}
class DriverCard extends StatelessWidget {
  const DriverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w,right: 16.w,top: 14.h),
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffD7D7D7),
            blurRadius: 48.r,
            offset: Offset(0, 18.h),
          ),
        ],
      ),
      child: Row(
        children: [
          _buildAvatar(),
          SizedBox(width: 12.w),
          _buildInfoSection(),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2.w, color: AppColors.appColors),
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.r),
        child: CustomImage(
          imageSrc: AppImages.businessProfileImage,
          width: 66.w,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildNameRow(),
          SizedBox(height: 6.h),
          _buildEmailRow(),
          SizedBox(height: 6.h),
          _buildVehicleRow(),
          SizedBox(height: 6.h),
          CustomText(
            text: 'Driver',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.n2,
          ),
        ],
      ),
    );
  }

  Widget _buildNameRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: 'Mr. Jubayed',
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        Row(
          children: [
            GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.businessEmployeeDetailsScreen);
                },
                child: Icon(Icons.remove_red_eye_outlined,
                    color: AppColors.appColors, size: 24.sp)),
            SizedBox(width: 12.w),
            GestureDetector(
              onTap: () {},
              child: CustomImage(imageSrc: AppImages.editIcon, width: 24.w),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEmailRow() {
    return Row(
      children: [
        Icon(Icons.mail_outline, size: 20.sp, color: Colors.grey),
        SizedBox(width: 6.w),
        Flexible(
          child: CustomText(
            text: 'mohammadjubayed.islam97@gmail.com',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.n2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildVehicleRow() {
    return Row(
      children: [
        CustomImage(imageSrc: AppImages.vehiclesIcon, width: 20.w),
        SizedBox(width: 6.w),
        CustomText(
          text: '02 vehicles assigned',
          fontSize: 14.sp,
          color: Colors.blue,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}