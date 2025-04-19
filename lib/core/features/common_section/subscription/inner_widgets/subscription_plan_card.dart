import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';

class SubscriptionPlanCard extends StatelessWidget {
  const SubscriptionPlanCard({
    super.key,
    this.priceText,
    this.planName,
    this.index,
    this.isSelected,
    this.onTap,
  });

  final String? priceText;
  final String? planName;
  final int? index;
  final bool? isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final controller = GetControllers.instance.getSubscriptionController();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected! ?const Color(0xffcceaff) :Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: isSelected! ? AppColors.appColors : const Color(0xffE5E4E4),
            width: 1.w,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              top: 12,
              text: priceText ?? '\$0.00',
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.appColors,
            ),
            SizedBox(height: 8.h),
            CustomText(
              text: planName ?? 'Basic Plan',
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff4C4B52),
            ),
            SizedBox(height: 16.h),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Radio<String>(
                        value: 'monthly',
                        groupValue: controller.subscriptionType.value,
                        onChanged: (value) =>
                            controller.subscriptionType(value!),
                        activeColor: AppColors.appColors,
                      ),
                      CustomText(
                        text: 'Per month',
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(width: 16.w),
                  Row(
                    children: [
                      Radio<String>(
                        value: 'yearly',
                        groupValue: controller.subscriptionType.value,
                        onChanged: (value) =>
                            controller.subscriptionType(value!),
                        activeColor: AppColors.appColors,
                      ),
                      CustomText(
                        text: 'Yearly',
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
