import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/business_section/business_view_details/inner_widgets/Info_card.dart';
import 'package:car_verify_app/core/features/business_section/business_view_details/inner_widgets/damagecard.dart';
import 'package:car_verify_app/core/features/business_section/business_view_details/inner_widgets/inforow.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:car_verify_app/my_test_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'inner_widgets/info_row_report.dart';

class BusinessViewReportsScreen extends StatelessWidget {
  const BusinessViewReportsScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "View Reports",
        colors: AppColors.appColors,
        leftIcon: true,
        rightIcon: Icon(
          FontAwesomeIcons.shareFromSquare,
          color: AppColors.appColors,
        ),
        rightOnPressed: () {

        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          children: [
            CustomImage(
              imageSrc: AppImages.detailsCar,
              horizontal: 16,
            ),
            const SizedBox(height: 12),
            const BusinessInfoRowReport(
                title: 'Registration no :', value: '12545206',color: AppColors.appColors, ),
            const BusinessInfoRowReport(title: 'Model :', value: 'Land cruiser'),
            const BusinessInfoRowReport(title: 'Vehicle year :', value: '2022'),
            const BusinessInfoRowReport(title: 'Make :', value: 'Toyota'),
            const BusinessInfoRowReport(title: 'Inspected by  :', value: 'Mr. Jubayed'),
             SizedBox(height: 14.h),
            const BusinessInfoCard(),
            Align(
                alignment: AlignmentDirectional.topStart,
                child: const CustomText(
                  top: 24,
                  text: "Quick Overview:",
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  left: 16,
                  bottom: 14,
                )),
            const BusinessInfoRowReport(
              title: 'Pre-handover condition : ',
              fontWeight: FontWeight.w400,
              value: 'No damages found',
              color: AppColors.green,
            ),
            const BusinessInfoRowReport(
              fontWeight: FontWeight.w400,
              title: 'Post-Handover condition :',
              value: '2 damage found',
              color: Colors.red,
            ),
            const BusinessInfoRowReport(
                title: 'Existing damages :',
                fontWeight: FontWeight.w400,
                value: 'Unchanged'),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: const [
                CustomText(
                  text: 'Damage section',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 12),
                BusinessDamageCardTwo(
                  title: 'Front Bumper',
                  description: 'Major Dent on front bumper right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                BusinessDamageCardTwo(
                  title: 'Fenders (Left & Right)',
                  description: 'Major Dent on Fendars right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                BusinessDamageCardTwo(
                  title: 'Headlights',
                  description: 'Broken headlight right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                BusinessDamageCardTwo(
                  title: 'Grille',
                  description: 'No damage in grille',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
              ],
            ),
            CustomGradientButton(
                text: "Download PDF",
                onPressed: () {
                    Get.to(VehicleDamageReportDownloadScreen());
                },
                width: MediaQuery.of(context).size.width / 1.1),
            SizedBox(
              height: 56,
            )
          ],
        ),
      ),
    );
  }
}


class BusinessDamageCardTwo extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const BusinessDamageCardTwo({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 4),
                CustomText(
                  text: description,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: AppColors.red,
                ),
                const SizedBox(height: 10),
                CustomGradientButton(
                  text: "View details",
                  onPressed: () {
                    //Get.toNamed(AppRoutes.viewDetailsScreen);
                    Get.toNamed(AppRoutes.damageDetailsScreen);
                  },
                  width: 100,
                  hight: 30.h,
                  size: 14,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(imageUrl,
                    width: 70, height: 70, fit: BoxFit.cover),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: const CustomText(
                  text: '+2 image',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
