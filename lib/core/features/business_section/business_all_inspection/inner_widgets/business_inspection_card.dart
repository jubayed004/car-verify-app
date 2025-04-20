import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessInspectionCard extends StatelessWidget {
  final String status;

  const BusinessInspectionCard({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(width: 1, color: Color(0xffD7D7D7)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xffD7D7D7),
            blurRadius: 48.r,
            offset: Offset(0, 18.h),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImage(imageSrc: AppImages.oongoingcar, fit: BoxFit.fill),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          CustomText(
                            top: 6,
                            textAlign: TextAlign.start,
                            text: "Registration no: ",
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            maxLines: 2,
                            bottom: 4,
                          ),
                          Flexible(
                            child: CustomText(
                              top: 6,
                              textAlign: TextAlign.start,
                              text: "1234524564256",
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: AppColors.n2,
                              overflow: TextOverflow.ellipsis,
                              bottom: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 4, right: 2),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: status == 'Completed' ? Colors.green.shade100 : Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: CustomText(
                          text: status,
                          color: AppColors.black,
                          fontSize: 12,
                        ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      textAlign: TextAlign.start,
                      text: "Model : ",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      bottom: 4,
                      color: Colors.black,
                    ),
                    CustomText(
                      textAlign: TextAlign.start,
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
                      textAlign: TextAlign.start,
                      text: "Making year : ",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      bottom: 4,
                      color: Colors.black,
                    ),
                    CustomText(
                      textAlign: TextAlign.start,
                      text: "2025",
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
                      textAlign: TextAlign.start,
                      text: "Brand : ",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      bottom: 8,
                      color: Colors.black,
                    ),
                    CustomText(
                      textAlign: TextAlign.start,
                      text: "Toyota",
                      bottom: 8,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.n2,
                      left: 4,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomGradientButton(
                    text: "View details",
                    onPressed: () {
                      //Get.toNamed(AppRoutes.viewDetailsScreen);
                      Get.toNamed(AppRoutes.businessViewDetailsScreen);
                    },
                    borderRadius: BorderRadius.circular(6),
                    width: 100,
                    hight: 26.h,
                    size: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
