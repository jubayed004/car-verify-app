import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Info_card.dart';
import 'damagecard.dart';

class PreVerificationTab extends StatelessWidget {
  const PreVerificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InfoCard(),
          const SizedBox(height: 16),
          const CustomText(
            text: 'Damage section',
            fontSize: 16,
            fontWeight: FontWeight.w600,
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
          const SizedBox(height: 12),
       CustomGradientButton(text: "Compare now", onPressed: (){Get.toNamed(AppRoutes.viewReportsScreen);}),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}