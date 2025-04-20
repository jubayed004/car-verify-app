import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmployeeHistoryReportCard extends StatelessWidget {
  final String imageUrl;
  final String regNo;
  final String model;
  final String inspectedOn;
  final String damageText;
  final bool isDamage;

  const EmployeeHistoryReportCard({
    super.key,
    required this.imageUrl,
    required this.regNo,
    required this.model,
    required this.inspectedOn,
    required this.damageText,
    required this.isDamage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(70),
            blurRadius: 48,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
           SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child:  CustomText(
                        text: 'Registration no : ',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,

                      ),
                    ),
                    Expanded(
                      child: CustomText(
                        text: regNo,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                CustomText(
                  text: 'Model :                    $model',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  left: 2,
                  bottom: 4,
                  top: 4,

                ),

                CustomText(
                  text: 'Inspected on:        $inspectedOn',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  left: 2,
                  bottom: 4,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child:  CustomText(
                        text: 'Damage : ',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: CustomText(
                        text: damageText,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: isDamage ? Colors.red : Colors.green,
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 8.h),
                SizedBox(
                  height: 26.h,
                  child:  CustomGradientButton(
                    text: "Report details",
                    onPressed: () {
                      //Get.toNamed(AppRoutes.viewDetailsScreen);
                      Get.toNamed(AppRoutes.employeeViewReportsScreen);
                    },
                    borderRadius: BorderRadius.circular(6),
                    width: 100.w,
                    size: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}