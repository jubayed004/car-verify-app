import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/features/common_section/subscription/payment/payment_successful/payment_successful_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PayPaymentScreen extends StatelessWidget {
  const PayPaymentScreen({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CustomText(text: "Enter Card Details",fontWeight: FontWeight.w600,fontSize: 18.sp,bottom: 20,),
            CustomText(text: "Card-holder's Name",fontSize: 16.sp,fontWeight: FontWeight.w600,bottom: 6,),
            CustomTextField(
              hintText: "Bessie Cooper",
              fillColor: Colors.white,
            ),
            CustomText(text: "Card Number",fontWeight: FontWeight.w600,fontSize: 16.sp,bottom:6 ,top: 10,),
            CustomTextField(
              hintText: "6578 3467 6967 2086",
              fillColor: Colors.white,
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Expire Date",fontSize: 16.sp,fontWeight: FontWeight.w600,bottom: 6,),
                      CustomTextField(
                        hintText: "08/2026",
                        fillColor: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(width: 14.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "CVC",fontSize: 16.sp,fontWeight: FontWeight.w600,bottom: 6,),
                      CustomTextField(
                        hintText: "452",
                        fillColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/3,),
            CustomGradientButton(text: "Pay",
                onPressed: (){
              Get.to(PaymentSuccessfulScreen());
                },
              fontWeight: FontWeight.w700,
              size: 18.sp,
            )


          ],
        ),
      ),
    );
  }
}
