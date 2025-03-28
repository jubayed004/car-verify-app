import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:get/get.dart';



class AllCarReportsScreen extends StatelessWidget {
  const AllCarReportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric( horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // all Report Cards
          Column(
              children: List.generate(20, (index)=> AllReportsCard(
                inspectionDate: '25, Feb 2025',
                damageStatus: 'No damages found',
                buttonText: 'View Report',
                hasDamages: false,
              ),)
          ),
        ],
      ),
    );
  }
}
class AllReportsCard extends StatelessWidget {
  final String inspectionDate;
  final String damageStatus;
  final String buttonText;
  final bool hasDamages;  // To toggle between "No damages found" and "damages found"

  const AllReportsCard({
    super.key,
    required this.inspectionDate,
    required this.damageStatus,
    required this.buttonText,
    required this.hasDamages,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      //margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Car Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                AppImages.ongoingCarView, // Replace with actual image asset
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16.w),
            // Inspection Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    top: 10,
                    text: 'Inspected on:  $inspectionDate',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 8.h),
                  CustomText(
                    text: 'Damage:  $damageStatus',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: hasDamages ? Colors.red : Colors.green,
                    bottom: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomGradientButton(
                        text: "View details",
                        onPressed: () {
                          //Get.toNamed(AppRoutes.viewDetailsScreen);
                          Get.toNamed(AppRoutes.carDetailsScreen);
                        },
                        width: 100.w,
                        hight: 30.h,
                        size: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      CustomImage(imageSrc: AppImages.downloadIcon),
                      CustomImage(imageSrc: AppImages.shareIcon),

                    ],
                  ),
                ],
              ),
            ),
            // View Report and Refresh Buttons


          ],
        ),
      ),
    );
  }
}

