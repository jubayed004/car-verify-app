import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_pop_up/custom_pop_up.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/business_section/Business_manage_employee/business_employee_details/inner_widgets/custom_alert_dialog.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AssignedVehicleListView extends StatefulWidget {
  const AssignedVehicleListView({super.key});

  @override
  State<AssignedVehicleListView> createState() => _AssignedVehicleListViewState();
}

class _AssignedVehicleListViewState extends State<AssignedVehicleListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(3, (_) => _vehicleCard()),
        SizedBox(height: 16.h),
        SizedBox(
          width: double.infinity,
          child: CustomGradientButton(
              text: 'Assign New Car',
              fontWeight: FontWeight.w600,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomAlertDialog();
                  },
                );
              }),
        )
      ],
    );
  }

  Widget _vehicleCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(70),
            blurRadius: 48.r,
            offset: Offset(0, 18.h),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: CustomImage(
              imageSrc: AppImages.detailsCar,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Registration no : ',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.black)),
                            TextSpan(
                                text: '12545206',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (_) => SizedBox(
                            height: MediaQuery.of(context).size.height / 4,
                            child: CustomShowDialog(
                              title: "Are you sure !!",
                              discription: "Do you want to delete this Car?",
                              textColor: AppColors.red,
                              showRowButton: true,
                            ),
                          ),
                        );
                      },
                      child:
                      CustomImage(imageSrc: AppImages.deletedIcon, sizeWidth: 24.w),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                CustomText(
                    text: 'Model : Landcruiser',
                    fontSize: 14.sp,
                    color: Colors.black),
                CustomText(
                    text: 'Making year : 2022',
                    fontSize: 14.sp,
                    color: Colors.black),
                SizedBox(height: 16.h),
                CustomGradientButton(
                  text: "Car details",
                  onPressed: () {
                    Get.toNamed(AppRoutes.carDetailsScreen);
                  },
                  hight: 26.h,
                  width: 100.w,
                  borderRadius: BorderRadius.circular(6),
                  fontWeight: FontWeight.w400,
                  size: 12.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}