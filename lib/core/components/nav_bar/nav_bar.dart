// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:service_provider_app/core/app_routes/app_routes.dart';
// import 'package:service_provider_app/core/components/custom_image/custom_image.dart';
// import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
// import 'package:service_provider_app/core/features/user_section/inbox/inbox_screen.dart';
// import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
// import 'package:service_provider_app/core/utils/app_icons/app_icons.dart';
// import 'package:service_provider_app/core/utils/app_images/app_images.dart';
// import 'package:service_provider_app/core/utils/app_strings/app_strings.dart';
//
// class BlackDaimonNavbar extends StatefulWidget {
//   final int currentIndex;
//
//   const BlackDaimonNavbar({required this.currentIndex, super.key});
//
//   @override
//   State<BlackDaimonNavbar> createState() => _UserNavBarState();
// }
//
// class _UserNavBarState extends State<BlackDaimonNavbar> {
//   late int bottomNavIndex;
//
//   final List<String> selectedIcon = [
//     AppImages.calender_two,
//     AppImages.love,
//     AppImages.massage,
//     AppImages.profile_nav,
//   ];
//
//   final List<String> unselectedIcon = [
//     AppImages.calender,
//     AppImages.heart,
//     AppImages.chat,
//     AppImages.user,
//   ];
//
//   final List<String> userNavText = [
//     AppStrings.service,
//     AppStrings.favourites,
//     AppStrings.inbox,
//     AppStrings.profile,
//   ];
//
//   @override
//   void initState() {
//     bottomNavIndex = widget.currentIndex;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Container(
//           height: 90.h,
//           width: MediaQuery.sizeOf(context).width,
//           decoration: BoxDecoration(
//             color: AppColors.white,
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: List.generate(
//                 selectedIcon.length,
//                     (index) => InkWell(
//                   onTap: () => onTap(index),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       index == bottomNavIndex
//                           ? Image.asset(
//                             selectedIcon[index],
//                             height: 24.h,
//                             width: 24.w,
//
//                           )
//                           : Image.asset(
//                         unselectedIcon[index],
//                         height: 24.h,
//                         width: 24.w,
//                         color: AppColors.neutral_03,
//                       ),
//                       SizedBox(height: 4.h),
//                       CustomText(
//                         text: userNavText[index],
//                         color: index == bottomNavIndex
//                             ? AppColors.black
//                             : AppColors.neutral_03,
//                         fontWeight: FontWeight.w600,
//                         fontSize: 14.w,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           top: -40.h,
//           left: 20,
//           right: 0,
//           child: Column(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Get.toNamed(AppRoutes.homeUserScreen);
//                 },
//                 child: Container(
//                   height: 80.h,
//                   width: 80.w,
//                   decoration: BoxDecoration(
//                     color: AppColors.appColor,
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: AppColors.white,
//                       width: 8.w,
//                     ),
//                   ),
//                   child: Padding(
//                     padding: EdgeInsets.all(18.0),
//                     child: CustomImage(
//                       imageSrc: AppIcons.house,
//                       height: 20.h,
//                       width: 20.w,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   void onTap(int index) {
//     if (index != bottomNavIndex) {
//       setState(() {
//         bottomNavIndex = index;
//       });
//       switch (index) {
//         case 0:
//         // Get.offAll(() => ServiceScreen());
//           break;
//         case 1:
//         // Get.to(() => FavouriteScreen());
//           break;
//         case 2:
//         Get.to(() => InboxScreen());
//           break;
//         case 3:
//         // Get.to(() => ProfileScreen());
//           break;
//       }
//     }
//   }
// }