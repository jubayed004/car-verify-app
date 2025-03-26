import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/features/my_test_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/all_reports_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({super.key});

  final List<_DashboardItem> items = const [
    _DashboardItem(
      title: 'View report',
      imagePath: 'assets/images/viewreportimage.png',
    ),
    _DashboardItem(
      title: 'Manage car',
      imagePath: 'assets/images/managecar.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      children: items.map((item) => _DashboardCard(item: item)).toList(),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final _DashboardItem item;

  const _DashboardCard({required this.item});

  void _handleNavigation(BuildContext context, String title) {
    if (title == 'View report') {
      Get.to(() => const AllReportsScreen()); // ✅ View report screen
    } else if (title == 'Manage car') {
     // Get.to(() => const ManageCarScreen()); // ✅ Manage car screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
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

class _DashboardItem {
  final String title;
  final String imagePath;

  const _DashboardItem({required this.title, required this.imagePath});
}
