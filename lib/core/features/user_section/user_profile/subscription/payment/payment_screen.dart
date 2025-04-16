import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/common_section/subscription/payment/pay_payment/pay_payment_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/subscription/payment/pay_payment/pay_payment_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserPaymentScreen extends StatelessWidget {
  const UserPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomRoyelAppbar(
          titleName: "Payment",
          leftIcon: true,
          colors: AppColors.appColors,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(text: "Payment Details",fontWeight: FontWeight.w600,fontSize: 20.sp,bottom: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Subscription plan",fontSize: 16.sp,color: AppColors.black,),
                  CustomText(text: "Basic",fontSize: 16.sp,fontWeight: FontWeight.w600,color: AppColors.appColors,),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Subscription fee",fontSize: 16.sp,color: AppColors.black,),
                  CustomText(text: "\$29.00",fontSize: 16.sp,fontWeight: FontWeight.w600,color: AppColors.appColors,),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Additional Fee",fontSize: 16.sp,color: AppColors.black,),
                  CustomText(text: "\$00.00",fontSize: 16.sp,fontWeight: FontWeight.w600,color: AppColors.appColors,),
                ],
              ),
             Divider(color: AppColors.appColors,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Subscription plan",fontSize: 16.sp,color: AppColors.black,),
                  CustomText(text: "Basic",fontSize: 16.sp,fontWeight: FontWeight.w600,color: AppColors.appColors,),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/2),
             CustomGradientButton(text: "Continue To Pay", onPressed: (){
               Get.to(UserPayPaymentScreen());
             })
            ],
          ),
        )
    );
  }
}
