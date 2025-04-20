import 'package:carousel_slider/carousel_slider.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DamageCustomAlertDialog extends StatefulWidget {
  const DamageCustomAlertDialog({super.key});

  @override
  _DamageCustomAlertDialogState createState() =>
      _DamageCustomAlertDialogState();
}

class _DamageCustomAlertDialogState extends State<DamageCustomAlertDialog> {

  int _currentIndex = 0;
  final CarouselController _controller =CarouselController();

  final List<String> imgList = [
    'assets/images/fontbamper.png',
    'assets/images/fontsideimage.png',
   // Add more images here
  ];


  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Close Button
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: CustomImage(imageSrc: AppImages.closeIcon),
              onPressed: () => Navigator.pop(context),
            ),
          ),

          // Title: Front Bumper
          Center(
            child: CustomText(
              text: "Front Bumper",
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 14.h),

          ///=================> Carousel Slider for Image <=================///
          CarouselSlider.builder(
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: CustomImage(
                  imageSrc: imgList[index],
                  width: 0.8.sw,
                  height: 200.h,
                  fit: BoxFit.cover,
                ),
              );
            },
            options: CarouselOptions(

              enlargeCenterPage: true,
              viewportFraction: 1.0,
              aspectRatio: 16 / 9,
              initialPage: 0,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 10.h),
          ///======================> Dots indicator <================///
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(imgList.length, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: 10.w,
                  height: 10.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    color: _currentIndex == index
                        ? AppColors.appColors
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 12.h),

          // Date and Time
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: AppColors.n2,
                    size: 16,
                  ),
                  SizedBox(width: 4.w),
                  CustomText(
                    text: "25, Feb 2025",
                    fontSize: 14.sp,
                    color: AppColors.n2,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.access_time_outlined,
                    size: 16,
                    color: AppColors.n2,
                  ),
                  SizedBox(width: 4.w),
                  CustomText(
                    text: "10:30 PM",
                    fontSize: 14.sp,
                    color: AppColors.n2,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12.h),

          // Description of damage
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              color: Color(0xffE5F4FF),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: CustomText(
              text: "Major Dent on front bumper right side",
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
