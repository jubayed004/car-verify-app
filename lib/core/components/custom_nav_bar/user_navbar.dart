import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_button.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_pop_up/custom_pop_up.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/manage_car_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/user_home_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/user_profile_screen.dart';
import 'package:car_verify_app/core/features/user_section/view_reports/all_reports/all_reports_screen.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:car_verify_app/core/utils/app_strings/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class UserNavbar extends StatefulWidget {
  final int currentIndex;

  const UserNavbar({required this.currentIndex, super.key});

  @override
  State<UserNavbar> createState() => _UserNavBarState();
}

class _UserNavBarState extends State<UserNavbar> {
  late int bottomNavIndex;

  final List<String> selectedIcon = [
    AppImages.homeIcon,
    AppImages.carReportsIcon,
    AppImages.carReportsIcon,
    AppImages.carManageIcon,
    AppImages.unProfile,
  ];

  final List<String> unselectedIcon = [
    AppImages.unSeletedHome,
    AppImages.unSeletedCarReports,
    AppImages.unSeletedCarReports,
    AppImages.unSeletdCarManage,
    AppImages.unProfile,
  ];

  final List<String> userNavText = [
    AppStrings.home,
    AppStrings.report,
    AppStrings.report,
    AppStrings.manageCar,
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
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xfff3f4f6)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                selectedIcon.length,
                (index) => Row(
                  children: [
                    if (index == 2)
                      SizedBox(width: 60.w)
                    else
                      InkWell(
                        onTap: () => onTap(index),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                index == bottomNavIndex
                                    ? selectedIcon[index]
                                    : unselectedIcon[index],
                                height: 30.h,
                                width: 30.w,
                                color: index == bottomNavIndex
                                    ? AppColors.appColors
                                    : AppColors.black,
                              ),
                            ),
                            if (index == bottomNavIndex)
                              CustomText(
                                text: userNavText[index],
                                fontSize: 12.w,
                                fontWeight: FontWeight.w500,
                                color: AppColors.appColors,
                              )
                          ],
                        ),
                      ),
                    if (index == 1) SizedBox(width: 0.w),
                  ],
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
              buildShowDialog(context);
            },
            child: Container(
              height: 70.w,
              width: 70.w,
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.white,
                  width: 8.w,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.w),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      buildShowDialog(context);
                    },
                    child: CustomImage(
                      imageSrc: AppImages.scanIcon,
                      height: 30.w,
                      width: 30.w,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    actionsPadding: EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                    backgroundColor: Colors.white,
                    actions: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height / 6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: CustomButton(
                                  onTap: () => Get.toNamed(AppRoutes.allCarScreen),
                                  title: "Select car",
                                  height: 50.h,
                                  fillColor: AppColors.white,
                                  textColor: AppColors.appColors,
                                  isBorder: true,
                                  borderWidth: 1,
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Flexible(
                                child: CustomGradientButton(
                                    text: "Add Car",
                                    onPressed: (){
                                      Get.toNamed(AppRoutes.addCarScreen);
                                    }
                                )
                              ),
                            ],
                          ))
                    ],
                  );
                });
  }

  void onTap(int index) {
    if (index != bottomNavIndex) {
      switch (index) {
        case 0:
          Get.offAll(() => UserHomeScreen());
          break;
        case 1:
          Get.to(() => AllReportsScreen());
          break;
        case 3:
          Get.to(() => ManageCarScreen());
          break;
        case 4:
          Get.to(() => UserProfileScreen());
          break;
      }
    }
  }
}
