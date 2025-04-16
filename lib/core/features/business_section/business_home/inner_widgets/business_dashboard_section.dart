import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessDashboardSection extends StatelessWidget {
  const BusinessDashboardSection({super.key});

  final List<_BusinessDashboardItem> items = const [
    _BusinessDashboardItem(
      title: 'View report',
      imagePath: 'assets/images/viewreport.svg',
    ),
    _BusinessDashboardItem(
      title: 'All Inspection',
      imagePath: 'assets/images/all_inspection.svg',
    ),
    _BusinessDashboardItem(
      title: 'Manage Fleet',
      imagePath: 'assets/images/managefleet.svg',
    ),
    _BusinessDashboardItem(
      title: 'Manage Employee',
      imagePath: 'assets/images/manageemployee.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      children: items.map((item) => _BusinessDashboardCard(item: item)).toList(),
    );
  }
}

class _BusinessDashboardCard extends StatelessWidget {
  final _BusinessDashboardItem item;

  const _BusinessDashboardCard({required this.item});

  void _handleNavigation(BuildContext context, String title) {
    if (title == 'View report') {
      Get.offAllNamed(AppRoutes.businessNavbar,arguments: 2);// ✅ View report screen
    } else if (title == 'All Inspection') {
     Get.offAllNamed(AppRoutes.businessNavbar,arguments: 1);// ✅ All Inspection screen
    }else if (title == 'Manage Fleet') {
      Get.offAllNamed(AppRoutes.businessNavbar,arguments: 3);// ✅ Manage Fleet screen
    }else if (title == 'Manage Employee') {
      print( "skjf;f;g");
      Get.offAllNamed(AppRoutes.businessNavbar,arguments: 4);// ✅ Manage Employee screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Colors.grey.shade300),
            ),
            child: CustomImage(imageSrc: item.imagePath, width: 200.w),
          ),
        ),
        const SizedBox(height: 8),
        CustomGradientButton(
          text: item.title,
          onPressed: () => _handleNavigation(context, item.title),
          hight: 40,
        ),
      ],
    );
  }
}

class _BusinessDashboardItem {
  final String title;
  final String imagePath;

  const _BusinessDashboardItem({required this.title, required this.imagePath});
}
