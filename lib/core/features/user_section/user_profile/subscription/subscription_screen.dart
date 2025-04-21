import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/common_section/subscription/inner_widgets/subscription_plan_card.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';

class UserSubscriptionScreen extends StatelessWidget {
  UserSubscriptionScreen({super.key});
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
              SubscriptionPlanCard(
                priceText: "\$79.00",
                planName: "Basic Plan",
                index: 0,
                isSelected: controller.selectedIndex.value == 0,
                onTap: () => controller.toggleCard(0),
              ),

              SizedBox(height: 20.h),
              SubscriptionPlanCard(
                priceText: "\$29.00",
                planName: "Pro Plan",
                index: 1,
                isSelected: controller.selectedIndex.value == 1,
                onTap: () => controller.toggleCard(1),
              ),
              if (controller.selectedIndex.value == 0) ...[
                SizedBox(height: 20.h),
                _buildBasicPlanContainer(),
              ],
              if (controller.selectedIndex.value == 1) ...[
                SizedBox(height: 20.h),
                _buildProPlanContainer(),
              ],
              SizedBox(height: 52.h),
              CustomGradientButton(
                text: "Subscribe Now",
                onPressed: () {
                  Get.toNamed(AppRoutes.userPaymentScreen);
                },
                fontWeight: FontWeight.w700,
                size: 18.sp,
              )
            ],
          );
        }),
      ),
    );
  }

  Widget _buildBasicPlanContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.appColors, width: 1.w),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          CustomText(
            text: "Included in Basic Plan",
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
          Divider(color: AppColors.dividerColor),
          SizedBox(height: 36.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            CustomText(
                text: "50 vehicles per month",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10),
          ]),
          SizedBox(height: 14.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            Flexible(
              child: CustomText(
                text: "Basic photo storage (Up to 6 months)",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ]),
          SizedBox(height: 14.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            Flexible(
              child: CustomText(
                text: "Standard pdf reports for insurance claims",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ]),
          SizedBox(height: 14.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            CustomText(
                text: "Email support",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10),
          ]),
        ],
      ),
    );
  }

  Widget _buildProPlanContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.appColors, width: 1.w),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          CustomText(
            text: "Included in Pro Plan",
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
          Divider(color: AppColors.dividerColor),
          SizedBox(height: 36.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            CustomText(
                text: "Unlimited vehicle scans",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10),
          ]),
          SizedBox(height: 14.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            Flexible(
              child: CustomText(
                text: "High resolution image storage (1 year)",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ]),
          SizedBox(height: 14.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            Flexible(
              child: CustomText(
                text: "AI-powered damage detection",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10,
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ]),
          SizedBox(height: 14.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            CustomText(
                text: "Integration with insurance",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10),
          ]),
          SizedBox(height: 14.h),
          Row(children: [
            CustomImage(imageSrc: AppImages.subPlanRightIcon),
            CustomText(
                text: "Priority support",
                fontSize: 18.sp,
                color: AppColors.n2,
                left: 10),
          ]),
        ],
      ),
    );
  }
}
