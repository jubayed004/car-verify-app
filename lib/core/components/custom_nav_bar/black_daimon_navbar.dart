/*
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tractivity_app/core/app_routes/app_routes.dart';
import 'package:tractivity_app/utils/app_icons/app_icons.dart';
import 'package:tractivity_app/utils/app_strings/app_strings.dart';
import 'package:tractivity_app/view/components/custom_image/custom_image.dart';
import 'package:tractivity_app/view/components/custom_text/custom_text.dart';
import '../../../utils/app_colors/app_colors.dart';

class BlackDaimonNavbar extends StatefulWidget {
  final int currentIndex;

  const BlackDaimonNavbar({required this.currentIndex, super.key});

  @override
  State<BlackDaimonNavbar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<BlackDaimonNavbar> {
  late int bottomNavIndex;

  final List<String> selectedIcon = [
    AppIcons.home,
    AppIcons.users,
    AppIcons.mail,
    AppIcons.person,
  ];
  final List<String> unselectedIcon = [
    AppIcons.home,
    AppIcons.users,
    AppIcons.mail,
    AppIcons.person,
  ];

  final List<String> userNavText = [
    AppStrings.world,
    AppStrings.social,
    AppStrings.messages,
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
          height: 90.h,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: AppColors.black_02,
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
                                ? Card(
                              elevation: 100,
                              shadowColor: AppColors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    selectedIcon[index],
                                    height: 24.h,
                                    width: 24.w,
                                    color: AppColors.primary,
                                  ),
                                  SizedBox(height: 4.h),
                                  index == bottomNavIndex
                                      ? const SizedBox()
                                      : CustomText(
                                    text: userNavText[index],
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.w,
                                  ),
                                ],
                              ),
                            )
                                : SvgPicture.asset(
                              unselectedIcon[index],
                              height: 24.h,
                              width: 24.w,
                              color: AppColors.white,
                            ),
                            SizedBox(height: 4.h),
                            index == bottomNavIndex
                                ? const SizedBox()
                                : CustomText(
                              text: userNavText[index],
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.w,
                            ),

                          ],
                        ),
                      ),
                      index == 1? SizedBox(width: 60.w): SizedBox()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: -40.h,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.meetUpListScreen);
                    },
                    child: Container(
                      // padding: EdgeInsets.symmetric(horizontal: 20.w),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.black_02,
                            width: 6,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CustomImage(imageSrc: AppIcons.map, height: 20,width: 20,),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  void onTap(int index) {
    if (index != bottomNavIndex) {
      switch (index) {
        case 0:
          Get.offAll(() => HomeScreen());
          break;
        case 1:
         Get.to(() => FriendScreen());
          break;
        case 2:
         Get.to(() => NotificationsScreen());
          break;
        case 3:
         Get.to(() => PersonProfileScreen());
          break;
      }
    }
  }
}
*/
