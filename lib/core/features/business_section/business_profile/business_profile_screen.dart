import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/controller/user_profile_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_const/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessProfileScreen extends StatelessWidget {
   BusinessProfileScreen({super.key});

   final controller = GetControllers.instance.getUserProfileController();

  final List<_MenuItem> menuItems = [
    _MenuItem(
      icon: Icons.person_outline,
      title: 'Edit Profile',
      onTap: () => Get.toNamed(AppRoutes.editProfileScreen),
    ),
    _MenuItem(
      icon: Icons.subscriptions_outlined,
      title: 'Subscription',
      onTap: () => Get.toNamed('/subscription'),
    ),
    _MenuItem(
      icon: Icons.support_agent_outlined,
      title: 'Contact Support',
      onTap: () => Get.toNamed(AppRoutes.contactSupportScreen),
    ),
    _MenuItem(
      icon: Icons.settings_outlined,
      title: 'Settings',
      onTap: () => Get.toNamed(AppRoutes.settingScreen),
    ),
    _MenuItem(
      icon: Icons.logout,
      title: 'Log Out',
      onTap: () {
        Get.defaultDialog(
          backgroundColor: Colors.white,
          title: "Log Out",
          middleText: "Are you sure you want to log out?",
          textConfirm: "Yes",
          buttonColor: AppColors.appColors,
          textCancel: "No",
          confirmTextColor: Colors.white,
          onConfirm: () {
            Get.back();
            // Implement logout logic here
          },
        );
      },
    ),
  ];

  final List<_MenuItem> legalMenuItems = [
    _MenuItem(
      icon: Icons.gavel_outlined,
      title: 'Terms & Conditions',
      onTap: () => Get.toNamed(AppRoutes.termsAndConditionScreen),
    ),
    _MenuItem(
      icon: Icons.privacy_tip_outlined,
      title: 'Privacy Policy',
      onTap: () => Get.toNamed(AppRoutes.privacyPolicyScreen),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Profile",
        colors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Center(
              child: Stack(
                children: [
                  Obx(() {
                    final image = controller.selectedImage.value;
                    return image != null
                        ? Container(
                      height: 120.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: FileImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                        : CustomNetworkImage(
                      imageUrl: AppConstants.girlsPhoto,
                      height: 120.h,
                      width: 120.w,
                      boxShape: BoxShape.circle,
                    );
                  }),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: GestureDetector(
                      onTap: controller.pickImageFromGallery,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: AppColors.servicePrimary,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.camera_alt, size: 18, color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            const CustomText(
              text: 'Abner Cruz',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 20.h),
            Row(
              children: const [
                Expanded(
                  child: _StatCard(
                    title: 'Total car',
                    value: '03',
                    icon: 'assets/images/totalcarimage.png',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: _StatCard(
                    title: 'Total reports',
                    value: '10',
                    icon: 'assets/images/reportcard.png',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            _StatCard(
              width: MediaQuery.of(context).size.width,
              title: 'Total reports',
              value: '10',
              icon: 'assets/images/reportcard.png',
            ),
            SizedBox(height: 24.h),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuItems.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (_, index) => _MenuTile(item: menuItems[index]),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Legal',
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                left: 6,
                bottom: 8,
                top: 8,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: legalMenuItems.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (_, index) => _MenuTile(item: legalMenuItems[index]),
            ),
          ],
        ),
      ),
    );
  }
}
class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  final double? width;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      width: width,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Colors.blue.shade300, Colors.blue.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, height: 30),
          const SizedBox(height: 8),
          CustomText(
            text: '$title : $value',
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}

class _MenuItem {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  _MenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}

class _MenuTile extends StatelessWidget {
  final _MenuItem item;

  const _MenuTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(item.icon, size: 28),
      title: CustomText(
        text: item.title,
        fontSize: 18,
        textAlign: TextAlign.start,
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: item.onTap,
    );
  }
}
