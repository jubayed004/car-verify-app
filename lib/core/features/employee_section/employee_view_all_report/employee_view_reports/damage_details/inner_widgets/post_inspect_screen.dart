import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/icontext.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostInspectTab1 extends StatelessWidget {
  const PostInspectTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel with finite size
            CarouselSlider(
              options: CarouselOptions(
                height: 200.h, // Set the height of the carousel
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
              ),
              items: [
                // Replace with your actual image assets
                ClipRRect(
                    borderRadius:  BorderRadius.all(Radius.circular(20)),
                    child: CustomImage(
                        imageSrc: AppImages.detailsCar, fit: BoxFit.cover)),
                ClipRRect(
                    borderRadius:  BorderRadius.all(Radius.circular(20)),
                    child: CustomImage(
                        imageSrc: AppImages.detailsCar, fit: BoxFit.cover)),
                ClipRRect(
                    borderRadius:  BorderRadius.all(Radius.circular(20)),
                    child: CustomImage(
                        imageSrc: AppImages.detailsCar, fit: BoxFit.cover)),
                ClipRRect(
                    borderRadius:  BorderRadius.all(Radius.circular(20)),
                    child: CustomImage(
                        imageSrc: AppImages.detailsCar, fit: BoxFit.cover)),
                ClipRRect(
                    borderRadius:  BorderRadius.all(Radius.circular(20)),
                    child: CustomImage(
                        imageSrc: AppImages.detailsCar, fit: BoxFit.cover)),

              ],
            ),
            SizedBox(height: 16.h),
            // Date and Time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(icon: Icons.calendar_month_outlined, text: '25,Feb 2025'),
                SizedBox(width: 12),
                IconText(icon: Icons.access_time, text: '10:30 pm'),
              ],
            ),
            SizedBox(height: 16.h),
            // Damage Section
            CustomText(
              text: 'Front Bumper',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 8.h),
            CustomText(
              text: 'Damage description',
              fontSize: 14.sp,
              color: Colors.black,
            ),
            SizedBox(height: 18.h),
            Container(
              padding: EdgeInsets.only(
                  left: 10.h, right: 10.w, bottom: 20.h, top: 20.h),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: CustomText(
                  text: 'Major Dent on front bumper right side ',
                  fontSize: 16.sp,
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                  maxLines: 6,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
