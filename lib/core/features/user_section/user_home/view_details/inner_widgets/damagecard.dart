import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/business_section/Business_manage_employee/business_employee_details/inner_widgets/custom_alert_dialog.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/damage_custom_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      padding:  EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(70),
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
                 SizedBox(height: 4.h),
                CustomText(
                  text: description,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                 SizedBox(height: 10.h),
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
                  borderRadius: BorderRadius.circular(6.r),
                  hight: 26.h,
                  width: 100.w,
                  size: 12,
                )
              ],
            ),
          ),
           SizedBox(width: 12.w),
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: CustomImage(
                    imageSrc: imageUrl,
                    width: 70.w,
                    height: 70.h,
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
