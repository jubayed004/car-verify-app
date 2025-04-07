import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_tab_selected/custom_tab_bar.dart';
import 'package:car_verify_app/core/features/user_section/user_home/controller/user_home_controller.dart';
import 'package:car_verify_app/core/features/user_section/user_home/inner%20widgets/inspection_card.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class BusinessInspectionScreen extends StatelessWidget {
   BusinessInspectionScreen({super.key});
  final HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Inspection",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // TabBar for Switching between Ongoing/Completed Inspections
          Obx(() => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,),
              child: CustomTabBar(
                tabs: const ["Ongoing inspection", "Completed inspection"],
                fontSize: 14.sp, // Responsive font size
                selectedIndex: controller.selectedTabIndex.value,
                onTabSelected: (index) => controller.selectedTabIndex.value = index,
                selectedColor: AppColors.appColors, // Custom color for selected tab
                unselectedColor: Colors.grey, // Unselected tab color
                textColor: Colors.black,
                isTextColorActive: true,
              ),
            ),
          ),
          const SizedBox(height: 16), // Spacing below TabBar

          // Inspection List (Ongoing or Completed)
          Expanded(
            child: Obx(
                  () {
                final inspections = controller.selectedTabIndex.value == 0
                    ? controller.ongoingInspections
                    : controller.completedInspections;
                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: inspections.length,
                  itemBuilder: (context, index) {
                    final data = inspections[index];
                    return InspectionCard(
                      data: data,
                      status: controller.selectedTabIndex.value == 0 ? 'Ongoing' : 'Completed',
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
