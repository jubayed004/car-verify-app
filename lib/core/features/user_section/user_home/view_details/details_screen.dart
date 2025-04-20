import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/inforow.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/post_verification_tab.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/pre_verification_tab.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/controller/view_details_controller.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_verify_app/core/components/custom_tab_selected/custom_tab_bar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:get/get.dart';


class ViewDetailsScreen extends StatelessWidget {
  ViewDetailsScreen({super.key});

  final controller = GetControllers.instance.getViewDetailsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Details",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(imageSrc: AppImages.detailsCar,horizontal: 16,),
            SizedBox(height: 16.h),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const CustomText(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  text: 'ongoing',
                ),
              ),
            ),
            const SizedBox(height: 12),
            const InfoRow(title: 'Registration no :', value: '12545206', isLink: true),
            const InfoRow(title: 'Model :', value: 'Land cruiser'),
            const InfoRow(title: 'Vehicle year :', value: '2022'),
            const InfoRow(title: 'Make :', value: 'Toyota'),
            Padding(
              padding: const EdgeInsets.only(left:16,right:16,top: 14),
              child: Obx(() {
                return CustomTabBar(
                  tabs: const ["Pre Verification", "Post Verification"],
                  fontSize: 14.sp,
                  selectedIndex: controller.selectedTabIndex.value,
                  onTabSelected: (index) =>
                  controller.selectedTabIndex.value = index,
                  selectedColor: AppColors.appColors,
                  unselectedColor: Colors.grey,
                  textColor: Colors.black,
                  isTextColorActive: true,
                );
              }),
            ),
            const SizedBox(height: 16),
            Obx(() {
              if (controller.selectedTabIndex.value == 0) {
                return const PreVerificationTab();
              } else {
                return PostVerificationTab();
              }
            }),

          ],
        ),
      ),
    );
  }
}








