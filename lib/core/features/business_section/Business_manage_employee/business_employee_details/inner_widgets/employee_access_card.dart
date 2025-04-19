
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/business_section/Business_manage_employee/business_employee_details/inner_widgets/assigned_vehicle_listview.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeeAccessCard extends StatefulWidget {
  const EmployeeAccessCard({super.key,});
  @override
  State<EmployeeAccessCard> createState() => _EmployeeAccessCardState();
}

class _EmployeeAccessCardState extends State<EmployeeAccessCard> {
  bool showVehicles = false;

  void toggleVehiclesView() {
    setState(() {
      showVehicles = !showVehicles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            CustomText(
              text: 'Mr. Jubayed',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            Row(
              children: [
                Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: const BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle)),
                SizedBox(width: 4.w),
                CustomText(text: 'Active', fontSize: 12.sp, color: AppColors.n2),
              ],
            ),
          ],
        ),
        SizedBox(height: 14.h),
        _infoRow(Icons.email_outlined, 'mommadjubayed.islam97@@gmail.com'),
        SizedBox(height: 8.h),
        _infoRow(Icons.phone_outlined, '+971265505694'),
        SizedBox(height: 8.h),
        CustomText(
            text: 'Joining on 02/05/2025',
            fontSize: 16.sp,
            color: AppColors.n2),
        SizedBox(height: 8.h),
        Row(
          children: [
            CustomText(
                text: 'Assigned vehicle: ',
                fontSize: 16.sp,
                color: AppColors.n2),
            CustomText(
                text: '03 Car',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.n2),
            const Spacer(),
            GestureDetector(
              onTap: toggleVehiclesView,
              child: Row(
                children: [
                  CustomText(
                      text: 'View all',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.appColors),
                  Icon(showVehicles ? Icons.expand_less : Icons.expand_more,
                      color: AppColors.appColors, size: 20.sp),
                ],
              ),
            )
          ],
        ),
        if (showVehicles)
          Column(
            children: [
              SizedBox(height: 20.h),
              const AssignedVehicleListView(),
            ],
          ),
        SizedBox(height: 16.h),
        CustomText(
            text: 'Manage Access',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black),
        SizedBox(height: 10.h),
        _toggleRow('Add car', true),
        _toggleRow('View report', true),
      ],
    );
  }

  Widget _infoRow(IconData icon, String value) {
    return Row(
      children: [
        Icon(icon, size: 20.sp, color: AppColors.n2),
        SizedBox(width: 8.w),
        CustomText(text: value, fontSize: 16.sp,fontWeight: FontWeight.w400, color: AppColors.n2),
      ],
    );
  }

  Widget _toggleRow(String label, bool isEnabled) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: label, fontSize: 16.sp, color: Colors.black),
        Transform.scale(
          scaleX: .9,
          scaleY: 0.8,
          child: Switch(
            padding: EdgeInsets.zero,
            value: isEnabled,
            onChanged: (val) {},
            activeColor: AppColors.white,
            activeTrackColor: AppColors.appColors,

          ),
        ),
      ],
    );
  }
}