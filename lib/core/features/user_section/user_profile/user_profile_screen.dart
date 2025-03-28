import 'package:car_verify_app/core/components/custom_nav_bar/user_navbar.dart';
import 'package:car_verify_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/controller/user_profile_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_const/app_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({super.key});

  final UserProfileController userProfileController = Get.find<UserProfileController>();

  final List<_MenuItem> menuItems = [
    _MenuItem(icon: Icons.person_outline, title: 'Edit Profile'),
    _MenuItem(icon: Icons.subscriptions_outlined, title: 'Subscription'),
    _MenuItem(icon: Icons.support_agent_outlined, title: 'Contact Support'),
    _MenuItem(icon: Icons.settings_outlined, title: 'Settings'),
    _MenuItem(icon: Icons.logout, title: 'Log Out'),
  ];
  final List<_MenuItem> legalMenuItems = [
    _MenuItem(icon: Icons.gavel_outlined, title: 'Terms & Conditions'),
    _MenuItem(icon: Icons.privacy_tip_outlined, title: 'Privacy Policy'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Profile",
        colors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Center(
              child: Stack(
                children: [
                  Obx(() {
                    if (userProfileController.selectedImage.value != null) {
                      return Container(
                        height: 120.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: FileImage(userProfileController.selectedImage.value!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      return CustomNetworkImage(
                        imageUrl: AppConstants.girlsPhoto,
                        height: 120.h,
                        width: 120.w,
                        boxShape: BoxShape.circle,
                      );
                    }
                  }),
                  Positioned(
                    bottom: 5,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        userProfileController.pickImageFromGallery();
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.servicePrimary,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          size: 18,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            CustomText(
              text: 'Abner Cruz',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                _StatCard(
                  title: 'Total car',
                  value: '03',
                  icon: 'assets/images/totalcarimage.png',
                ),
                SizedBox(width: 16),
                _StatCard(
                  title: 'Total reports',
                  value: '10',
                  icon: 'assets/images/reportcard.png',
                ),
              ],
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(0),
              child: ListView.separated(

                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: menuItems.length,
                separatorBuilder: (context, index) => Divider(height: 1),
                itemBuilder: (context, index) {
                  return _MenuTile(item: menuItems[index]);
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Legal',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                left: 6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: legalMenuItems.length,
                separatorBuilder: (context, index) => Divider(height: 1),
                itemBuilder: (context, index) {
                  return _MenuTile(item: legalMenuItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: UserNavbar(currentIndex: 4,),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String icon;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        padding: EdgeInsets.all(12),
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
            SizedBox(height: 8),
            CustomText(
              text: '$title :$value',
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuItem {
  final IconData icon;
  final String title;

  _MenuItem({required this.icon, required this.title});
}

class _MenuTile extends StatelessWidget {
  final _MenuItem item;

  const _MenuTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Icon(item.icon, size: 28),
      title: CustomText(
        text: item.title,
        fontSize: 16,
        textAlign: TextAlign.start,
      ),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        // Handle tap here
      },
    );
  }
}
