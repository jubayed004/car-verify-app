import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_pop_up/custom_pop_up.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EmployeeSettingScreen extends StatelessWidget {
  const EmployeeSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Setting",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                 Get.toNamed(AppRoutes.employeeChangePasswordScreen);
              },
              child: Card(
                color: Color(0xffE5F4FF),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: "Change Password",fontWeight: FontWeight.w400,fontSize: 18.sp,),
                      Icon(Icons.arrow_forward_ios,size: 14.sp,)
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
