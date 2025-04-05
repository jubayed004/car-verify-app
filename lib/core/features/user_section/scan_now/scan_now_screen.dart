import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanNowScreen extends StatelessWidget {
  const ScanNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "Scan now",
        colors: AppColors.appColors,
        leftIcon: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width / 1.3,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.appColors,
          child: CustomText(
            text: "Save Inspection",
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 56,horizontal: 20),
        child: Center(
          child: SizedBox(
            width: 300.w,
            height: 550.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Car Image
               CustomImage(imageSrc: AppImages.scanNowCar),
                // Top Camera
                const Positioned(
                  top: 0,
                  child: _CameraButton(),
                ),
                // Bottom Camera
                const Positioned(
                  bottom: 0,
                  child: _CameraButton(),
                ),

                // Left Center
                const Positioned(
                  left: 0,
                  child: _CameraButton(),
                ),

                // Right Center
                const Positioned(
                  right: 0,
                  child: _CameraButton(),
                ),

                // Top Left
                const Positioned(
                  top: 100,
                  left: 0,
                  child: _CameraButton(),
                ),

                // Top Right
                const Positioned(
                  top: 100,
                  right: 0,
                  child: _CameraButton(),
                ),

                // Bottom Left
                const Positioned(
                  bottom: 100,
                  left: 0,
                  child: _CameraButton(),
                ),
                // Bottom Right
                const Positioned(
                  bottom: 100,
                  right: 0,
                  child: _CameraButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class _CameraButton extends StatelessWidget {
  const _CameraButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff4C9CE5), Color(0xff70C8CD)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(width: 2,color: AppColors.textFieldColor)
      ),
      child: Icon(
        Icons.camera_alt,
        color: Colors.white,
        size: 24.sp,
      ),
    );
  }
}