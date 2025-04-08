import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessManageFleetScreen extends StatelessWidget {
  const BusinessManageFleetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Manage Fleet",
        leftIcon: true,
        colors: AppColors.appColors,
        rightIcon: Icon(Icons.search,color: AppColors.appColors,size: 26,)
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16,vertical: 20
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            _StatCard(
              width: MediaQuery.of(context).size.width,
              title: 'Total Cars',
              value: '10',
              icon: 'assets/images/totalcarimage.png',
            ),
            CustomText(text: "All Car",fontSize: 20.sp,fontWeight: FontWeight.w600,bottom: 14,top: 20,),
            // Car List
            Column(
              children: List.generate(
                30, // Number of cars you want to display
                    (index) => CarVerificationCard(),
              ),
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
      height: 56,
      width: width,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset(icon, height: 36.h),
           SizedBox(width: 8.w),
          CustomText(
            text: '$title : $value',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),

        ],
      ),
    );
  }
}

class CarVerificationCard extends StatelessWidget {
  const CarVerificationCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
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
              height: 160.h,
              imageSrc: AppImages.oongoingcar,
              fit: BoxFit.fill),
           SizedBox(width: 8.w),
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
                Row(
                  children: [
                    Expanded(
                      child: CustomGradientButton(
                        text: "View details",
                        onPressed: () {
                          //Get.toNamed(AppRoutes.viewDetailsScreen);
                          Get.toNamed(AppRoutes.carDetailsScreen);
                        },
                        width: 90.w,
                        hight: 30.h,
                        size: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 4.w,),
                    Expanded(
                      child: CustomGradientButton(
                        text: "View details",
                        onPressed: () {
                          //Get.toNamed(AppRoutes.viewDetailsScreen);
                          Get.toNamed(AppRoutes.carDetailsScreen);
                        },
                        width: 90.w,
                        hight: 30.h,
                        size: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
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
