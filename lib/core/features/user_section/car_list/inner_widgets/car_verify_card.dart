import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CarVerifyCard extends StatelessWidget {
  const CarVerifyCard({super.key});

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
              imageSrc: AppImages.ongoingCarView,
              fit: BoxFit.fill),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    top: 10,
                    textAlign: TextAlign.start,
                    text: "Registration no : 12545206",
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                    bottom: 6),
                CustomText(
                  text: "Model : Landcruiser ",
                  bottom: 6,
                ),
                CustomText(text: "Making year : 2022", bottom: 6),
                CustomText(text: "Brand : Toyota", bottom: 10),
                CustomGradientButton(
                  text: "Scan now",
                  onPressed: () {
                    //Get.toNamed(AppRoutes.viewDetailsScreen);
                    //Get.toNamed(AppRoutes.carDetailsScreen);
                  },
                  width: 100.w,
                  hight: 30.h,
                  size: 14,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          const SizedBox(width: 8),

        ],
      ),
    );
  }
}
