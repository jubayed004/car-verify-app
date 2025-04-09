import 'package:car_verify_app/core/components/custom_nav_bar/user_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:car_verify_app/core/components/custom_tab_selected/custom_tab_bar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/user_home/controller/user_home_controller.dart';
import 'package:car_verify_app/core/features/user_section/user_home/inner%20widgets/dashboard_section.dart';
import 'package:car_verify_app/core/features/user_section/user_home/inner%20widgets/header_card.dart';
import 'package:car_verify_app/core/features/user_section/user_home/inner%20widgets/inspection_card.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';

class UserHomeScreen extends StatelessWidget {
 UserHomeScreen({super.key});

  // Get the HomeController instance
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            HeaderCard(),

            // Dashboard Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: DashboardSection(),
            ),

            // Recent Activity Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomText(
                text: "Recent Activity",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                bottom: 12,
              ),
            ),


            // TabBar for Switching between Ongoing/Completed Inspections
            Obx(
                  () => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
             SizedBox(height: 16.h), // Spacing below TabBar

            // Inspection List (Ongoing or Completed)
            Obx(
                  () {
                final inspections = controller.selectedTabIndex.value == 0
                    ? controller.ongoingInspections
                    : controller.completedInspections;

                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap:true,
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
          ],
        ),
      ),
      // bottomNavigationBar: UserNavbar(currentIndex: 0,),
    );
  }
}
