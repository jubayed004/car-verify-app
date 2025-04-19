import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/Info_card.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/inforow.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/inner_widgets/info_row_report.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:car_verify_app/my_test_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class EmployeeViewReportsScreen extends StatelessWidget {
  const EmployeeViewReportsScreen({super.key});



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
          Get.to(VehicleDamageReportDownloadScreen());
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
            const InfoRow(
                title: 'Registration no :', value: '12545206', isLink: true),
            const InfoRow(title: 'Model :', value: 'Land cruiser'),
            const InfoRow(title: 'Vehicle year :', value: '2022'),
            const InfoRow(title: 'Make :', value: 'Toyota'),
            const InfoRow(title: 'Inspected by :', value: 'You'),
            const SizedBox(height: 14),
            const InfoCard(),
            const SizedBox(height: 14),
            Align(
                alignment: AlignmentDirectional.topStart,
                child: const CustomText(
                  text: "Quick Overview:",
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  left: 16,
                )),
            const SizedBox(height: 14),
            const InfoRowReport(
              title: 'Pre-handover condition : ',
              value: 'No damages found',
              color: AppColors.green,
            ),
            const InfoRowReport(
              title: 'Post-Handover condition :',
              value: '2 damage found',
              color: Colors.red,
            ),
            const InfoRowReport(
                title: 'Existing damages :', value: 'Unchanged'),
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
                DamageCard(
                  title: 'Front Bumper',
                  description: 'Major Dent on front bumper right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                DamageCard(
                  title: 'Fenders (Left & Right)',
                  description: 'Major Dent on Fendars right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                DamageCard(
                  title: 'Headlights',
                  description: 'Broken headlight right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                DamageCard(
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



class DamageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const DamageCard({
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
                 SizedBox(height: 4.h),
                CustomText(
                  text: description,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.red,
                ),
                 SizedBox(height: 10.h),
                CustomGradientButton(
                  text: "Report details",
                  onPressed: () {
                    //Get.toNamed(AppRoutes.viewDetailsScreen);
                    Get.toNamed(AppRoutes.damageDetailsScreen);
                  },
                  borderRadius: BorderRadius.circular(6.r),
                  width: 100.w,
                  hight: 26.h,
                  size: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
           SizedBox(width: 12.w),
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(imageUrl,
                    width: 70.w, height: 70.h, fit: BoxFit.cover),
              ),
              Container(
                width: 70.w,
                height: 70.h,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.r),
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
