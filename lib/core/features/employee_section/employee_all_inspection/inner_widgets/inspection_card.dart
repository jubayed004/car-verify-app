import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmployeeInspectionCard extends StatelessWidget {
  final Map<String, dynamic> data;
  final String status;

  const EmployeeInspectionCard({super.key, required this.data, required this.status});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 14),
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),

      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(
              height: 150.h,
              imageSrc: AppImages.oongoingcar,
              fit: BoxFit.fill),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    top: 6,
                    textAlign: TextAlign.start,
                    text: "Registration no : ${data['regNo']}",
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                    bottom: 4),
                CustomText(
                  text: "Model : ${data['model']}",
                  bottom: 4,
                ),
                CustomText(text: "Making year : ${data['year']}", bottom: 4),
                CustomText(text: "Brand : ${data['brand']}", bottom: 4),
                CustomGradientButton(
                  text: "View details",
                  onPressed: () {
                    //Get.toNamed(AppRoutes.viewDetailsScreen);
                    Get.toNamed(AppRoutes.businessViewDetailsScreen);
                  },
                  hight: 30.h,
                  size: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Container(
              margin: EdgeInsets.only(top: 6, right: 4),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: status == 'Completed'
                    ? Colors.green.shade100
                    : Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: CustomText(
                text: status,
                color: AppColors.black,
                fontSize: 12,
              ))
        ],
      ),
    );
  }
}
