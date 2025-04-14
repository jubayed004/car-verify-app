import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:car_verify_app/core/utils/app_strings/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChooseCatagoryAlertDialogScreen extends StatelessWidget {
  const ChooseCatagoryAlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white_50,
      insetPadding: EdgeInsets.all(8),
      contentPadding: EdgeInsets.all(8),
      title: Align(
        alignment:Alignment.topLeft,
          child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back))),
      content: SizedBox(
        height: MediaQuery.sizeOf(context).height/2.2
        ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(
              height: 24.h,
            ),
            SizedBox(
                 width: MediaQuery.sizeOf(context).width,
                height: 100.h,
                child: GestureDetector(
                  onTap: (){

                     Get.toNamed(AppRoutes.userNavbar);
                    },
                  child: Card(
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: CustomText( text: "User  Service",
                         fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 100.h,
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.businessNavbar);
                  },
                  child: Card(
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: CustomText( text: "Business Service",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 100.h,
                child: GestureDetector(
                  onTap: (){

                  },
                  child: Card(
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: CustomText( text: "Employee Service",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
