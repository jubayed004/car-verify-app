
import 'package:car_verify_app/core/components/custom_tab_selected/custom_tab_bar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'user_section/user_home/controller/user_home_controller.dart';
import 'user_section/user_home/inner widgets/dashboard_section.dart';
import 'user_section/user_home/inner widgets/header_card.dart';
import 'user_section/user_home/inner widgets/inspection_card.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderCard(),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DashboardSection(),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomText(
              text: "Recent Activity",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          Obx(() => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTabBar(
              tabs: const ["Ongoing inspection","Completed inspection"],
               fontSize: 14.sp,
              selectedIndex: controller.selectedTabIndex.value,
              onTabSelected: (index) => controller.selectedTabIndex.value = index,
              selectedColor: AppColors.appColors,
              unselectedColor: Colors.grey,
              textColor: Colors.black,
              isTextColorActive: true,
            ),
          )),
          const SizedBox(height: 16), // spacing below CustomTabBar
          Expanded(
              child: Obx(() => ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: controller.selectedTabIndex.value == 0
                    ? controller.ongoingInspections.length
                    : controller.completedInspections.length,
                itemBuilder: (context, index) => InspectionCard(
                  data: controller.selectedTabIndex.value == 0
                      ? controller.ongoingInspections[index]
                      : controller.completedInspections[index],
                  status: controller.selectedTabIndex.value == 0
                      ? 'Ongoing'
                      : 'Completed',
                ),
              )))
        ],
      ),

    );
  }
}

/*DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "Ongoing inspection"),
                      Tab(text: "Completed inspection"),
                    ],
                  ),
                  SizedBox(
                    height: 260,
                    child: TabBarView(
                      children: [
                        Obx(() {
                          if (controller.ongoingInspections.isEmpty) {
                            return const Center(child: Text("No ongoing inspections"));
                          }
                          return ListView.builder(
                            itemCount: controller.ongoingInspections.length,
                            itemBuilder: (context, index) => InspectionCard(
                              data: controller.ongoingInspections[index],
                              status: 'Ongoing',
                            ),
                          );
                        }),
                        Obx(() {
                          if (controller.completedInspections.isEmpty) {
                            return const Center(child: Text("No completed inspections"));
                          }
                          return ListView.builder(
                            itemCount: controller.completedInspections.length,
                            itemBuilder: (context, index) => InspectionCard(
                              data: controller.completedInspections[index],
                              status: 'Completed',
                            ),
                          );
                        }),
                      ],
                    ),
                  )
                ],
              ),
            )*/

