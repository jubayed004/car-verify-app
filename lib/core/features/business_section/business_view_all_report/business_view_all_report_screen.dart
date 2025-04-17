import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/business_section/business_view_all_report/inner_widgets/date_field.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/all_reports_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessViewAllReportScreen extends StatelessWidget {
  BusinessViewAllReportScreen({super.key});

  final controller = GetControllers.instance.getBusinessHomeController();

  @override
  Widget build(BuildContext context) {
    final item = const [
      ReportCard(
        imageUrl: 'assets/images/ongoingcar.png',
        regNo: '12545206',
        model: 'Landcruiser',
        inspectedOn: '25,Feb 2025',
        damageText: '2 damage found',
        isDamage: true, inspectedBy: 'Mr. Jubayed',
      ),
      ReportCard(
        imageUrl: 'assets/images/ongoingcar.png',
        regNo: '12545206',
        model: 'Landcruiser',
        inspectedOn: '25,Feb 2025',
        damageText: 'No damages found',
        isDamage: false, inspectedBy: 'Mr. Jubayed',
      ),
      ReportCard(
        imageUrl: 'assets/images/ongoingcar.png',
        regNo: '12545206',
        model: 'Landcruiser',
        inspectedOn: '25,Feb 2025',
        damageText: '2 damage found',
        isDamage: true, inspectedBy: 'Mr. Jubayed',
      ),
      ReportCard(
        imageUrl: 'assets/images/ongoingcar.png',
        regNo: '12545206',
        model: 'Landcruiser',
        inspectedOn: '25,Feb 2025',
        damageText: '2 damage found',
        isDamage: true, inspectedBy: 'Mr. Jubayed',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "All reports",
        colors: AppColors.appColors,
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
class ReportCard extends StatelessWidget {
  final String imageUrl;
  final String regNo;
  final String model;
  final String inspectedOn;
  final String inspectedBy;
  final String damageText;
  final bool isDamage;

  const ReportCard({
    super.key,
    required this.imageUrl,
    required this.regNo,
    required this.model,
    required this.inspectedOn,
    required this.damageText,
    required this.isDamage,
    required this.inspectedBy,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.only(left: 10,right: 10,top: 6,bottom: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withAlpha(70),
            blurRadius: 18,
            offset: const Offset(0, 48),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CustomImage(imageSrc:
            imageUrl,
              fit: BoxFit.cover,
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
                      flex: 0,
                      child: const CustomText(
                        text: 'Registration no : ',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: regNo,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                CustomText(
                  top: 4,
                  text: 'Model :  $model',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  left: 2,
                  bottom: 4,
                ),

                CustomText(
                  text: 'Inspected on:  $inspectedOn',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  left: 2,
                  bottom: 4,
                ),

                CustomText(
                  text: 'Inspected by:  $inspectedBy',
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  left: 2,
                  bottom: 4,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: const CustomText(
                        text: 'Damage : ',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: damageText,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: isDamage ? Colors.red : Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 30,
                  child:  CustomGradientButton(
                    text: "View Report",
                    onPressed: () {
                      Get.toNamed(AppRoutes.businessViewReportsScreen);
                    },
                    width: 100,
                    hight: 30.h,
                    size: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
