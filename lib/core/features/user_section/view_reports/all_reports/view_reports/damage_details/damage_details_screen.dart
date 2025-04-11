import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_tab_selected/custom_tab_bar.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/damage_details/controller/damage_details_controller.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/damage_details/inner_widgets/change_detected_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/damage_details/inner_widgets/post_inspect_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/view_reports/damage_details/inner_widgets/pre_inspection_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DamageDetailsScreen extends StatelessWidget {
   DamageDetailsScreen({super.key});

   final controller = GetControllers.instance.getDamageDetailsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Damage Details",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: Column(
        children: [
          SizedBox(height: 24.h,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Obx(() {
              return CustomTabBar(
                tabs: const ["Change detected", "Pre inspection","Post inspection"],
                fontSize: 14.sp,
                selectedIndex: controller.selectedTabIndex.value,
                onTabSelected: (index) =>
                controller.selectedTabIndex.value = index,
                selectedColor: AppColors.appColors,
                unselectedColor: Colors.greenAccent,
                textColor: Colors.black,
                isTextColorActive: true,

              );
            }),
          ),
          const SizedBox(height: 16),
          Obx(() {
            if (controller.selectedTabIndex.value == 0) {
              return const ChangeDetectedTab();
            } else if(controller.selectedTabIndex.value == 1){
              return PreInspectionTab();
            }else{
              return
                PostInspectTab();
            }
          }),
        ],
      ),
    );
  }
}
