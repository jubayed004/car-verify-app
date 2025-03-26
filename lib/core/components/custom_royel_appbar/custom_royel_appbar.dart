// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomRoyelAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? titleName;

  //final void Function()? leftOnTap;
  final void Function()? rightOnTap;
  final Icon? rightIcon;
  final bool? leftIcon;
  final double fontSize;
  final Color colors;
  final Color iconColors;
  final VoidCallback? rightOnPressed;

  const CustomRoyelAppbar(
      {super.key,
      this.titleName,
      // this.leftOnTap,
      this.rightIcon,
      this.rightOnTap,
      this.leftIcon = false,
      this.fontSize = 22,
      this.colors = AppColors.white,
      this.iconColors = AppColors.white,
        this.rightOnPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0,right: 14),
      child: AppBar(
          toolbarHeight: 50,
          elevation: 0,
          foregroundColor: Colors.transparent,
          centerTitle: true,
          scrolledUnderElevation: 0,
          actions: [
            IconButton(
              onPressed: rightOnPressed,
              icon: Center(
                  child: rightIcon),
            )

          ],
          backgroundColor: Colors.transparent,
          leading: leftIcon == true
              ? IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Center(
                        child: Icon(
                      Icons.arrow_back,
                      color: Colors.blue,
                    )),
                  ),
                )
              : SizedBox(),
          title: CustomText(
            text: titleName ?? "",
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
            color: colors,
          )),
    );
  }

  @override
  // TO DO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
