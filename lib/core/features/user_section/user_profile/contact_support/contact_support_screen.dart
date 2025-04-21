import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/contact_support/inner_widgets/primary_container.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ContactSupportScreen extends StatelessWidget {
  const ContactSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Support",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Subject",fontWeight: FontWeight.w400,fontSize: 14.sp,bottom: 6,),
            Divider(height: 2,color: AppColors.dividerColor,),
            SizedBox(height: 24.h,),
            PrimaryContainer(
              radius: 10,
              child: TextField(
                onChanged: (value) {},
                maxLines: 8,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                controller: TextEditingController(),
                decoration: const InputDecoration(
                    contentPadding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
                    border: InputBorder.none,
                    filled: false,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Write here.......',
                    hintStyle: TextStyle(fontSize: 14, color: AppColors.n2)),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            CustomGradientButton(text: "Send", onPressed: (){
              Get.back();
            })

          ],
        ),
      ),
    );
  }
}
