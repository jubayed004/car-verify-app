/*
import 'package:flutter/material.dart';
import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String? image;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressed;
  final Color sideColor;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.image,
    required this.color,
    required this.textColor,
    this.onPressed,
    this.sideColor=Colors.white54,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: sideColor),
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Only add image if it's not null
            if (image != null)
              SizedBox(
                width: 20.w,
                height: 24.h,
                child: Image.asset(image??""),
              ),
              SizedBox(width: 8.w), // Space between image and text

            CustomText(
              text: text,
              color: textColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
*/
