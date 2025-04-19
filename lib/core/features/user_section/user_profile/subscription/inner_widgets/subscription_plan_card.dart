import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/common_section/subscription/controller/subscription_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';

class SubscriptionPlanCard extends StatelessWidget {
  const SubscriptionPlanCard({
    super.key,
    this.priceText,
    this.planName,
    this.index, // To identify the card
    this.isSelected, // If the card is selected
    this.onTap, // Callback when card is tapped
  });

  final String? priceText;
  final String? planName;
  final int? index; // Index of the card (0 or 1)
  final bool? isSelected; // Whether the card is selected or not
  final VoidCallback? onTap; // Callback when tapped

  @override
  Widget build(BuildContext context) {
    // Access the controller and subscription state using GetX
   // final controller = Get.find<SubscriptionController>();
    final controller = GetControllers.instance.getSubscriptionController();

    return GestureDetector(
      onTap: onTap, // Trigger callback on tap
      child: Container(
        decoration: BoxDecoration(
          color: isSelected! ? Colors.white : Color(0xffCCEAFF), // Change color based on selected state
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Color(0xffE5E4E4), width: 1.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Price Text
            CustomText(
              top: 12,
              text: priceText ?? '\$0.00', // Fallback in case priceText is null
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.appColors, // Replace with your custom color
            ),
            SizedBox(height: 8.h),

            // Plan Name
            CustomText(
              text: planName ?? 'Basic Plan', // Fallback in case planName is null
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff4C4B52),
            ),
            SizedBox(height: 16.h),

            // Toggle Options: Per month / Yearly
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Per month option
                Row(
                  children: [
                    Radio<String>(
                      value: 'monthly',
                      groupValue: controller.subscriptionType.value, // Group value is bound to controller
                      onChanged: (value) {
                        controller.subscriptionType(value!); // Update the subscription type to 'monthly'
                      },
                      activeColor: AppColors.appColors, // Customize active color
                    ),
                    CustomText(
                      text: 'Per month',
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(width: 16.w), // Space between options

                // Yearly option
                Row(
                  children: [
                    Radio<String>(
                      value: 'yearly',
                      groupValue: controller.subscriptionType.value, // Group value is bound to controller
                      onChanged: (value) {
                        controller.subscriptionType(value!); // Update the subscription type to 'yearly'
                      },
                      activeColor: AppColors.appColors, // Customize active color
                    ),
                    CustomText(
                      text: 'Yearly',
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
