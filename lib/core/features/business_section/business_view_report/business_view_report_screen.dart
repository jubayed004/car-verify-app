import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/business_section/business_home/controller/business_home_controller.dart';
import 'package:car_verify_app/core/features/business_section/business_view_report/inner_widgets/date_field.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/all_reports_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessViewReportScreen extends StatelessWidget {
  BusinessViewReportScreen({super.key});

  final controller = GetControllers.instance.getBusinessHomeController();

  @override
  Widget build(BuildContext context) {
    final item = const [
      HistoryReportCard(
        imageUrl: 'assets/images/ongoingcar.png',
        regNo: '12545206',
        model: 'Landcruiser',
        inspectedOn: '25,Feb 2025',
        damageText: '2 damage found',
        isDamage: true,
      ),
      HistoryReportCard(
        imageUrl: 'assets/images/ongoingcar.png',
        regNo: '12545206',
        model: 'Landcruiser',
        inspectedOn: '25,Feb 2025',
        damageText: 'No damages found',
        isDamage: false,
      ),
      HistoryReportCard(
        imageUrl: 'assets/images/ongoingcar.png',
        regNo: '12545206',
        model: 'Landcruiser',
        inspectedOn: '25,Feb 2025',
        damageText: '2 damage found',
        isDamage: true,
      ),
      HistoryReportCard(
        imageUrl: 'assets/images/ongoingcar.png',
        regNo: '12545206',
        model: 'Landcruiser',
        inspectedOn: '25,Feb 2025',
        damageText: '2 damage found',
        isDamage: true,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(

        titleName: "All reports",
        colors: AppColors.appColors,
        leftIcon: true,
        actions: [
          // Only wrap PopupMenuButton with Obx if it needs to update when selectedItem changes
      PopupMenuButton<String>(
        color: AppColors.white,
      onSelected: (String newValue) {
    controller.selectedItem.value = newValue;
    },
      icon: CustomImage(
        imageSrc: AppImages.sortMenuIcon,
        height: 30,
      ),
      itemBuilder: (BuildContext context) {
        return controller.items.map((String item) {
          return PopupMenuItem<String>(value: item, child: Text(item));
        }).toList();
      },
    ),
          SizedBox(width: 10),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      isDens: true,
                      fillColor: Color(0xffE5F4FF),
                      hintText: "Search report...",
                      fieldBorderColor: AppColors.appColors,
                      prefixIcon: Icon(Icons.search, size: 24),
                    ),
                    CustomText(
                      text: "Filter by date",
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      top: 20,
                      bottom: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "From",
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          bottom: 8,
                        ),
                        CustomText(
                          text: "To",
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          bottom: 8,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: DateField()),
                        SizedBox(width: 10),
                        Expanded(child: DateField()),
                      ],
                    ),
                    // Only wrap the CustomText displaying the selectedItem in Obx
                    Obx(() {
                      return CustomText(
                        text: controller.selectedItem.value,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        top: 20,
                      );
                    }),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return item[index];
                  },
                  childCount: item.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
