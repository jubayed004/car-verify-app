import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_nav_bar/user_navbar.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AllReportsScreen extends StatelessWidget {
  const AllReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: CustomRoyelAppbar(
        titleName: "All Reports",

        colors: AppColors.appColors,
        rightIcon: Icon(Icons.search,color: AppColors.appColors,size: 26,),
        rightOnPressed: (){
          Get.toNamed(AppRoutes.searchReportScreen);
        },
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          HistoryReportCard(
            imageUrl: 'assets/images/ongoingcar.png',
            regNo: '12545206',
            model: 'Landcruiser',
            inspectedOn: '25,Feb 2025',
            damageText: '2 damage found',
            isDamage: true,
          ),
         HistoryReportCard(
            imageUrl: 'assets/images/ongoingcar.png',
            regNo: '12545206',
            model: 'Landcruiser',
            inspectedOn: '25,Feb 2025',
            damageText: 'No damages found',
            isDamage: false,
          ),
    HistoryReportCard(
            imageUrl: 'assets/images/ongoingcar.png',
            regNo: '12545206',
            model: 'Landcruiser',
            inspectedOn: '25,Feb 2025',
            damageText: '2 damage found',
            isDamage: true,
          ),
       HistoryReportCard(
            imageUrl: 'assets/images/ongoingcar.png',
            regNo: '12545206',
            model: 'Landcruiser',
            inspectedOn: '25,Feb 2025',
            damageText: '2 damage found',
            isDamage: true,
          ),
        ],
      ),
      // bottomNavigationBar: UserNavbar(currentIndex: 1,),
    );
  }
}

class HistoryReportCard extends StatelessWidget {
  final String imageUrl;
  final String regNo;
  final String model;
  final String inspectedOn;
  final String damageText;
  final bool isDamage;

  const HistoryReportCard({
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
            offset:  Offset(0, 18),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CustomImage(
              imageSrc: imageUrl,
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
                      child: const CustomText(
                        text: 'Registration no : ',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        bottom: 4,
                      ),
                    ),
                    Expanded(
                      child: CustomText(
                        text: regNo,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                        bottom: 4,
                      ),
                    ),
                  ],
                ),
                CustomText(
                  text: 'Model :                 $model',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  left: 2,
                  bottom: 4,
                ),

                CustomText(
                  text: 'Inspected on:     $inspectedOn',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  left: 2,
                  bottom: 4,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: const CustomText(
                        text: 'Damage : ',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        bottom: 4,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: damageText,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: isDamage ? Colors.red : Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 24,
                  child:  CustomGradientButton(
                    text: "View Report",
                    onPressed: () {
                      Get.toNamed(AppRoutes.viewReportsScreen);
                    },
                    borderRadius: BorderRadius.circular(6),
                    width: 100.w,
                    size: 12,
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
