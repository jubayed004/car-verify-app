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
  UserNavbar({super.key, this.currentIndex =0});

  final int currentIndex;
  @override
  State<UserNavbar> createState() => _UserNavbarState();
}

class _UserNavbarState extends State<UserNavbar> {
  final ValueNotifier<int> bottomNavIndex = ValueNotifier(0);

  final List<String> selectedIcon = [
    AppImages.homeIcon,
    AppImages.carReportsIcon,
    AppImages.carManageIcon,
    AppImages.unProfile,
  ];

  final List<String> unselectedIcon = [
    AppImages.unSeletedHome,
    AppImages.unSeletedCarReports,
    AppImages.unSeletdCarManage,
    AppImages.unProfile,
  ];

  final List<String> userNavText = [
    AppStrings.home,
    AppStrings.report,
    AppStrings.manageCar,
    AppStrings.profile,
  ];

  final allWidgets = [
    UserHomeScreen(),
    AllReportsScreen(),
    ManageCarScreen(),
    UserProfileScreen()
  ];
  @override
  void initState() {
     bottomNavIndex.value =widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: bottomNavIndex,
        builder: (_, int i, __) {
          return allWidgets[bottomNavIndex.value];
        },
      ),
      bottomNavigationBar: Stack(
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
                children: [
                  buildInkWell(0),
                  buildInkWell(1),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                  buildInkWell(2),
                  buildInkWell(3),
                ],
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
                  color: AppColors.appColors,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xfff3f4f6),
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
      ),
    );
  }

  InkWell buildInkWell(int index) {
    return InkWell(
      onTap: () {
        bottomNavIndex.value = index;
      },
      child: ValueListenableBuilder(
        valueListenable: bottomNavIndex,
        builder: (_, int i, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 5, right: 5),
                child: SvgPicture.asset(
                  index == bottomNavIndex.value
                      ? selectedIcon[index]
                      : unselectedIcon[index],
                  height: 30.h,
                  width: 30.w,
                  colorFilter: index == bottomNavIndex.value
                      ? ColorFilter.mode(AppColors.appColors, BlendMode.srcIn)
                      : ColorFilter.mode(AppColors.black, BlendMode.srcIn),
                ),
              ),
              if (index == bottomNavIndex.value)
                CustomText(
                  text: userNavText[index],
                  fontSize: 12.w,
                  fontWeight: FontWeight.w500,
                  color: AppColors.appColors,
                ),
              if (index == bottomNavIndex.value)
                ClipPath(
                  clipper: CustomWaveClipper(),
                  child: Container(
                    width: 50,
                    height: 20,
                    color: Colors.blue,
                  ),
                )
            ],
          );
        },
      ),
    );
  }

  Future<dynamic> buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actionsPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
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
                              onPressed: () {
                                Get.toNamed(AppRoutes.addCarScreen);
                              })),
                    ],
                  ))
            ],
          );
        });
  }
}

class CustomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Starting point at bottom-left
    path.moveTo(0, size.height);

    // Move 5 pixels upwards on the left side
    path.lineTo(4, size.height - 2);

    // Move right 8 pixels
    path.lineTo(8, size.height - 4);

    // Create a curve to the right 8 pixels
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.25, size.width - 10, size.height - 4);

    // Close the path to the top-right corner
    path.lineTo(size.width, size.height);

    // Close the path to the starting point
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}