import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_nav_bar/user_navbar.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ManageCarScreen extends StatelessWidget {
  const ManageCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Manage car",
        colors: AppColors.appColors,
        rightIcon: Icon(
          Icons.search,
          size: 26,
          color: AppColors.appColors,
        ),
        rightOnPressed: (){
          Get.toNamed(AppRoutes.searchCarScreen);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width-65,

          child: FloatingActionButton(

            onPressed: () {
              Get.toNamed(AppRoutes.scanNowScreen);
            },
            backgroundColor: AppColors.appColors,
            child: CustomText(
              text: "Add New Car",
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: "All Car",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
             SizedBox(height: 20.h,),
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
      // bottomNavigationBar: UserNavbar(currentIndex: 3,),
    );
  }
}

class CarVerificationCard extends StatelessWidget {
  const CarVerificationCard({super.key});
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
                  text: "Car details",
                  onPressed: () {
                    //Get.toNamed(AppRoutes.viewDetailsScreen);
                    Get.toNamed(AppRoutes.carDetailsScreen);
                  },
                  borderRadius: BorderRadius.circular(6),
                  width: 100.w,
                  hight: 26.h,
                  size: 12,
                  fontWeight: FontWeight.w400,
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
