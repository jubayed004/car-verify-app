import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/Info_card.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/damagecard.dart';

import 'package:flutter/material.dart';

class PreVerificationTab extends StatelessWidget {
  const PreVerificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
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
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {},
                child: const CustomText(
                  text: "Compare now",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}