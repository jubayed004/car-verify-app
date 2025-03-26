import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/widgets/Info_card.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/widgets/damagecard.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostVerificationTab extends StatelessWidget {
  const PostVerificationTab({super.key});

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
            Center(
                child: const CustomText(
              text: "Scan not completed",
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppColors.appColors,
                  bottom: 100,
                  top: 100,
            )),
            CustomGradientButton(text: "Scan Now", onPressed: (){},fontWeight: FontWeight.w700,size: 18,),
            SizedBox(height: 70.h,)
          ],
        ),
      ),
    );
  }
}
