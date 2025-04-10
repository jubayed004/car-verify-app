import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_pop_up/custom_pop_up.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              onPressed: () {}),
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
            color: const Color(0xffD7D7D7),
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
              width: 99,
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
                    fontSize: 13.sp,
                    color: Colors.black),
                CustomText(
                    text: 'Making year : 2022',
                    fontSize: 13.sp,
                    color: Colors.black),
                SizedBox(height: 6.h),
                SizedBox(
                  height: 30.h,
                  child: SizedBox(
                      width: 110.w,
                      child: CustomGradientButton(
                        text: "View details",
                        onPressed: () {},
                        fontWeight: FontWeight.w400,
                        size: 14.sp,
                      )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}