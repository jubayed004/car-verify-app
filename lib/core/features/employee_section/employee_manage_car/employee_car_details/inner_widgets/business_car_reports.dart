import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/my_test_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:get/get.dart';



class EmployeeCarReports extends StatelessWidget {
  const EmployeeCarReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // all Report Cards
        Column(
            children: List.generate(20, (index)=> BusinessAllReportsCard(
              inspectionDate: '25, Feb 2025',
              damageStatus: 'No damages found',
              buttonText: 'View Report',
              hasDamages: false,
            ),)
        ),
      ],
    );
  }
}
class BusinessAllReportsCard extends StatelessWidget {
  final String inspectionDate;
  final String damageStatus;
  final String buttonText;
  final bool hasDamages;  // To toggle between "No damages found" and "damages found"

  const BusinessAllReportsCard({
    super.key,
    required this.inspectionDate,
    required this.damageStatus,
    required this.buttonText,
    required this.hasDamages,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      //margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Car Image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child:  CustomImage(
                    height: 80.h,
                    imageSrc: AppImages.oongoingcar,
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(width: 16.w),
            // Inspection Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Inspected on:                   $inspectionDate',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),

                  CustomText(
                    text: 'Damage:                $damageStatus',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: hasDamages ? Colors.red : Colors.green,
                     bottom: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomGradientButton(
                        text: "View Report",
                        onPressed: () {
                          Get.toNamed(AppRoutes.employeeViewReportsScreen);
                        },
                        borderRadius: BorderRadius.circular(6.r),
                        width: 100.w,
                        hight: 26.h,
                        size: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: (){
                                Get.to(VehicleDamageReportDownloadScreen());
                              },
                              child: CustomImage(imageSrc: AppImages.downloadIcon)),
                          SizedBox(width: 10.w,),
                          GestureDetector(
                              onTap: (){
                                Get.to(VehicleDamageReportDownloadScreen());
                              },
                              child: CustomImage(imageSrc: AppImages.shareIcon)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // View Report and Refresh Buttons


          ],
        ),
      ),
    );
  }
}

