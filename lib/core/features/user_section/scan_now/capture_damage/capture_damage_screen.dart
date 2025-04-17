import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';

class CaptureDamageScreen extends StatelessWidget {
  const CaptureDamageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Capture Damage",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            Stack(
              children: [
                CustomImage(imageSrc: AppImages.captureDamageImage),
                Positioned(
                    bottom: -100,
                    left: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: CustomImage(
                          imageSrc: AppImages.imageCaptureIcon
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
