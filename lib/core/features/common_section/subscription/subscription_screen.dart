import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/common_section/subscription/inner_widgets/subscription_plan_card.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({super.key});
  final controller = GetControllers.instance.getSubscriptionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Subscription",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Obx(() {
          return Column(
            children: [
              // Subscription Plan Card 1
              SubscriptionPlanCard(
                priceText: "\$79.00",
                planName: "Basic Plan",
                index: 0,
                isSelected: controller.selectedColors[0],
                onTap: () {
                  controller.toggleCardColor(0); // Update selected color for this card
                },
              ),
              SizedBox(height: 20.h),

              // Subscription Plan Card 2
              SubscriptionPlanCard(
                priceText: "\$29.00",
                planName: "Pro Plan",
                index: 1,
                isSelected: controller.selectedColors[1],
                onTap: () {
                  controller.toggleCardColor(1); // Update selected color for this card
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
