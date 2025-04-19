import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmployeeInspectionCardTwo extends StatelessWidget {



  const EmployeeInspectionCardTwo({super.key,  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 14),
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),

      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(
              imageSrc: AppImages.oongoingcar,
              fit: BoxFit.fill),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      top: 6,
                        textAlign: TextAlign.start,
                        text: "Registration no : ",
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        maxLines: 2,

                      bottom: 4,
                    ),

                    Flexible(
                      child: CustomText(
                        top: 6,
                          textAlign: TextAlign.start,
                          text: "1234524564256",
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        color: AppColors.n2,
                        overflow: TextOverflow.ellipsis,
                        bottom: 4,
                        left: 4,
                          ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                      text: "Model : ",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      bottom: 4,
                      color: Colors.black,
                    ),
                    CustomText(
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
                      text: "Making year : ",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      bottom: 4,
                      color: Colors.black,
                    ),
                    CustomText(
                      text: "2022",
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
                      text: "Brand : ",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      bottom: 8,
                      color: Colors.black,
                    ),
                    CustomText(
                      text: "Toyota",
                      bottom: 8,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.n2,
                      left: 4,
                    ),
                  ],
                ),

                CustomGradientButton(
                  text: "View details",
                  onPressed: () {
                    //Get.toNamed(AppRoutes.viewDetailsScreen);
                    //Get.toNamed(AppRoutes.employeeCarDetailsScreen);
                  },
                  width: 100.w,
                  hight: 24.h,
                  size: 12,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),

        ],
      ),
    );
  }
}
