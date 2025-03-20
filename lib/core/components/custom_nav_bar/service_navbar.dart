/*
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:service_provider_app/core/app_routes/app_routes.dart';
import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/features/service_provider_section/inbox_service_screen/inbox_user_screen.dart';
import 'package:service_provider_app/core/features/service_provider_section/notification/notification_screen.dart';
import 'package:service_provider_app/core/features/service_provider_section/profile/service_profile_screen.dart';
import 'package:service_provider_app/core/features/service_provider_section/service_calender/service_calender.dart';
import 'package:service_provider_app/core/features/service_provider_section/service_home/service_home.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:service_provider_app/core/utils/app_images/app_images.dart';
import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';


class ServiceNavbar extends StatefulWidget {
  final int currentIndex;
  const ServiceNavbar({required this.currentIndex, super.key});

  @override
  State<ServiceNavbar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<ServiceNavbar> {
  late int bottomNavIndex;

  final List<String> selectedIcon = [
    AppImages.selectedService,
    AppImages.chatIconBlue,
    AppImages.selectedLove,
    AppImages.selectedAlart,
    AppImages.selectedProfile,
  ];
  final List<String> unselectedIcon = [
    AppImages.unselectedService,
    AppImages.unselectedInbox,
    AppImages.unselectedLove,
    AppImages.unselectedAlart,
    AppImages.unselectedProfile,
  ];

  final List<String> userNavText = [
    AppStrings.calendar,
    AppStrings.inbox,
    AppStrings.notification,
    AppStrings.notification,
    AppStrings.profile,
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 80.h,
          width: MediaQuery.sizeOf(context).width,
          decoration:
              BoxDecoration(color: AppColors.white //Color(0xffEEF6FF),
                  ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  selectedIcon.length,
                  (index) => Row(
                    children: [
                      InkWell(
                        onTap: () => onTap(index),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            index == bottomNavIndex
                                ? index == 2
                                    ? SizedBox()
                                    : Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: SvgPicture.asset(
                                              selectedIcon[index],
                                              height: 30.h,
                                              width: 30.w,
                                              // ignore: deprecated_member_use
                                              // color: AppColors.primary,
                                            ),
                                          ),
                                          SizedBox(height: 10.h,)
                                        ],
                                      )
                                : index == 2
                                    ? SizedBox()
                                    : SvgPicture.asset(
                                        unselectedIcon[index],
                                        height: 30.h,
                                        width: 30.w,
                                        // ignore: deprecated_member_use
                                        //  color: AppColors.primary,
                                      ),
                            index != 2 && index != bottomNavIndex
                                ? CustomText(
                                    text: userNavText[index],
                                    fontSize: 12.w,
                                    fontWeight: FontWeight.w400,
                                  )
                                : SizedBox(
                                    height: 5.h,
                                  )
                          ],
                        ),
                      ),
                      index == 1 ? SizedBox(width: 20.w) : SizedBox()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: -30.h,
          left: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              // Get.toNamed(AppRoutes.userHomeScreen);
            },
            child: Column(
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Get.toNamed(AppRoutes.userHomeScreen);
                      },
                      child: Container(
                        // padding: EdgeInsets.symmetric(horizontal: 20.w),
                        height: 70.w,
                        width: 70.w,
                        decoration: BoxDecoration(
                            color: widget.currentIndex == 2
                                ? AppColors.blue
                                : AppColors.blue,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.white,
                              width: 6,
                            )),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.serviceHomeScreen);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(12.0.w),
                            child: CustomImage(
                              imageSrc: AppImages.notificationcard,
                              height: 30.w,
                              width: 30.w,
                              // imageColor: ,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  void onTap(int index) {
    if (index != bottomNavIndex) {
      switch (index) {
        case 0:
          Get.offAll(() => ServiceCalender());
          break;
        case 1:
          Get.to(() => InboxUserScreen());
          break;
        case 2:
          Get.to(() => ServiceHomeScreen());
          break;
        case 3:
          Get.to(() => ServiceNotificationScreen());
          break;
        case 4:
          Get.to(() => ServiceProfileScreen());
          break;
      }
    }
  }

}
*/
