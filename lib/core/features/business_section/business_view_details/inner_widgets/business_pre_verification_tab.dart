import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/business_section/business_view_details/inner_widgets/Info_card.dart';
import 'package:car_verify_app/core/features/business_section/business_view_details/inner_widgets/damagecard.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/Info_card.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/damagecard.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessPreVerificationTab extends StatelessWidget {
  const BusinessPreVerificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BusinessInfoCard(),
          const SizedBox(height: 16),
          const CustomText(
            text: 'Damage section',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 12),
          const BusinessDamageCard(
            title: 'Front Bumper',
            description: 'Major Dent on front bumper right side',
            imageUrl: 'assets/images/bumperdamagecar.png',
          ),
          const BusinessDamageCard(
            title: 'Fenders (Left & Right)',
            description: 'Major Dent on Fendars right side',
            imageUrl: 'assets/images/bumperdamagecar.png',
          ),
          const BusinessDamageCard(
            title: 'Headlights',
            description: 'Broken headlight right side',
            imageUrl: 'assets/images/bumperdamagecar.png',
          ),
          const BusinessDamageCard(
            title: 'Grille',
            description: 'No damage in grille',
            imageUrl: 'assets/images/bumperdamagecar.png',
          ),
          const SizedBox(height: 12),
       CustomGradientButton(text: "Compare now", onPressed: (){Get.toNamed(AppRoutes.businessViewReportsScreen);}),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}