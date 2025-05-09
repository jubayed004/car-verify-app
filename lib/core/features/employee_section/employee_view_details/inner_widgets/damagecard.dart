import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/business_section/business_view_details/inner_widgets/damage_custom_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessDamageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const BusinessDamageCard({
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
            color: const Color(0xffD7D7D7),
            blurRadius: 48.r,
            offset: Offset(0, 18.h),
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
                CustomGradientButton(
                  text: 'View details',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DamageCustomAlertDialog();
                      },
                    );
                  },
                  hight: 30,
                  width: 100.w,
                  size: 12,
                )
              ],
            ),
          ),
          const SizedBox(width: 12),
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CustomImage(
                    imageSrc: imageUrl,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover),
              ),
              CustomText(
                text: '+2 image',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
