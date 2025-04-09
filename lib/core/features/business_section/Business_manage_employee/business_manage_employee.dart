import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessManageEmployee extends StatelessWidget {
  const BusinessManageEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
          titleName: "Manage Employee",
          leftIcon: true,
          colors: AppColors.appColors,
          rightIcon: Icon(Icons.search,color: AppColors.appColors,size: 26,)
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            _StatCard(
              width: MediaQuery.of(context).size.width,
              title: 'Total Cars',
              value: '10',
              icon: 'assets/images/totalcarimage.png',
            ),
            CustomText(text: "All Car",fontSize: 20.sp,fontWeight: FontWeight.w600,bottom: 14,top: 20,),
            // Car List
          ],
        ),
      ),
    );
  }
}
class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final double? width;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: width,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset(icon, height: 36.h),
          SizedBox(width: 8.w),
          CustomText(
            text: '$title : $value',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}