import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';

class BusinessManageEmployeeScreen extends StatelessWidget {
  const BusinessManageEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Manage Employee",
        leftIcon: true,
        colors: AppColors.appColors,
        rightIcon: Icon(Icons.search, color: AppColors.appColors, size: 26.sp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 0.75.sw,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.appColors,
          child: CustomText(
            text: "Add New Employee",
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _StatCard(
              width: 1.sw,
              title: 'Total Employee',
              value: '10',
              icon: AppImages.totalEmployeeIcon,
            ),
            CustomText(
              text: "All Employee",
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              bottom: 14.h,
              top: 20.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 30,
              itemBuilder: (_, index) => const DriverCard(),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final double? width;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: width,
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(imageSrc: icon, height: 36.h),
          SizedBox(width: 8.w),
          CustomText(
            text: '$title : $value',
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
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
      margin: EdgeInsets.only(bottom: 14.h),
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
