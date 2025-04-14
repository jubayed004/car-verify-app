import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart'; // Replace with your image widget
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart'; // Replace with your color constants

class ImageCarouselWithDots extends StatefulWidget {
  const ImageCarouselWithDots({super.key});

  @override
  _ImageCarouselWithDotsState createState() => _ImageCarouselWithDotsState();
}

class _ImageCarouselWithDotsState extends State<ImageCarouselWithDots> {
  int _currentIndex = 0;

  final List<String> imgList = [
    'assets/images/fontbamper.png', // Replace with your actual image path
    'assets/images/fontbamper_new.png', // Replace with your actual image path
    'assets/images/fontbamper_old.png', // Replace with your actual image path
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Carousel Slider
          CarouselSlider.builder(
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: CustomImage(
                  imageSrc: imgList[index], // CustomImage widget to handle your image
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 10.h),

          // Dots indicator
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
        ],
      ),
    );
  }
}
