import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessHistoryReportCard extends StatelessWidget {
  final String imageUrl;
  final String regNo;
  final String model;
  final String inspectedOn;
  final String damageText;
  final bool isDamage;

  const BusinessHistoryReportCard({
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
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6,
            offset: const Offset(0, 2),
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
                      flex: 2,
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
                  text: 'Model :  $model',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  left: 2,
                ),

                CustomText(
                  text: 'Inspected on:  $inspectedOn',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  left: 2,
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
                      flex: 2,
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
                  height: 30.h,
                  child:  CustomGradientButton(
                    text: "View details",
                    onPressed: () {
                      //Get.toNamed(AppRoutes.viewDetailsScreen);
                      //Get.toNamed(AppRoutes.viewReportsScreen);
                    },
                    width: 100.w,
                    hight: 30.h,
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