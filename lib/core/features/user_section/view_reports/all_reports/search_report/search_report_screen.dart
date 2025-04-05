import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/all_reports_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchReportScreen extends StatelessWidget {
  const SearchReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Search reports",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hintText: "12344",
              fillColor: Color(0xffE5F4FF),
              isDens: true,
              prefixIcon: Icon(
                Icons.search,
                size: 25.sp,
                color: AppColors.black,
              ),
              suffixIcon: Icon(
                Icons.close,
                size: 25.sp,
                color: AppColors.appColors,
              ),
            ),
            CustomText(
              text: "Search result for “1234”",
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
              top: 24,
              bottom: 24,
            ),
            HistoryReportCard(
              imageUrl: 'assets/images/ongoingcar.png',
              regNo: '12545206',
              model: 'Landcruiser',
              inspectedOn: '25,Feb 2025',
              damageText: '2 damage found',
              isDamage: true,
            ),
          ],
        ),
      ),
    );
  }
}
