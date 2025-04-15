import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Payment",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomText(text: "Payment Successful",fontWeight: FontWeight.w600,fontSize: 24.sp,color: AppColors.appColors,bottom: 80,),
            ),
            CustomGradientButton(text: "Go To Home", onPressed: (){
              Get.toNamed(AppRoutes.businessNavbar);
            },fontWeight: FontWeight.w700,size: 18.sp,)

          ],
        ),
      ),
    );
  }
}
