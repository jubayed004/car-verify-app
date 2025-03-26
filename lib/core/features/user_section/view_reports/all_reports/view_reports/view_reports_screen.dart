import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/widgets/Info_card.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/widgets/inforow.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/widgets/info_row_report.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../all_reports_screen.dart';

class ViewReportsScreen extends StatelessWidget {
  const ViewReportsScreen({super.key});

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
        rightOnPressed: () {},
      ),
      body: SingleChildScrollView(
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
            const InfoRowReport(title: 'Pre-handover condition : ', value: 'No damages found',color: AppColors.green, ),
            const InfoRowReport(title: 'Post-Handover condition :', value: '2 damage found',color: Colors.red,),
            const InfoRowReport(title: 'Existing damages :', value: 'Unchanged'),
        
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              children: const [
                const CustomText(
                  text: 'Damage section',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 12),
                const DamageCard(
                  title: 'Front Bumper',
                  description: 'Major Dent on front bumper right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                const DamageCard(
                  title: 'Fenders (Left & Right)',
                  description: 'Major Dent on Fendars right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                const DamageCard(
                  title: 'Headlights',
                  description: 'Broken headlight right side',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
                const DamageCard(
                  title: 'Grille',
                  description: 'No damage in grille',
                  imageUrl: 'assets/images/bumperdamagecar.png',
                ),
              ],
            ),
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
                const SizedBox(height: 4),
                CustomText(
                  text: description,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    onPressed: () {},
                    child: const CustomText(
                      text: 'View details',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
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
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
