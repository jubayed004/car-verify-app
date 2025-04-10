
import 'package:car_verify_app/core/features/business_section/Business_manage_employee/business_employee_details/inner_widgets/employee_access_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_pop_up/custom_pop_up.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';

class BusinessEmployeeDetailsScreen extends StatefulWidget {
  const BusinessEmployeeDetailsScreen({super.key});

  @override
  State<BusinessEmployeeDetailsScreen> createState() =>
      _BusinessEmployeeDetailsScreenState();
}

class _BusinessEmployeeDetailsScreenState
    extends State<BusinessEmployeeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Car details",
        leftIcon: true,
        colors: AppColors.appColors,
        actions: [
          GestureDetector(
            onTap: () => Get.toNamed(AppRoutes.editCarDetailsScreen),
            child: CustomImage(imageSrc: AppImages.editIcon, sizeWidth: 24.w),
          ),
          SizedBox(width: 6.w),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                barrierColor: AppColors.white,
                backgroundColor: AppColors.white,
                context: context,
                builder: (_) => SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  child: CustomShowDialog(
                    title: "Are you sure !!",
                    discription: "Do you want to delete this Car?",
                    textColor: AppColors.red,
                    showRowButton: true,
                  ),
                ),
              );
            },
            child:
                CustomImage(imageSrc: AppImages.deletedIcon, sizeWidth: 24.w),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2.w, color: AppColors.appColors),
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.r),
                  child: CustomImage(
                    imageSrc: AppImages.businessProfileImage,
                    width: 90.w,
                    height: 90.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.h),
            EmployeeAccessCard(),
          ],
        ),
      ),
    );
  }
}



