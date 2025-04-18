import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_button.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CaptureCustomAlertDialog extends StatefulWidget {
  const CaptureCustomAlertDialog({super.key});

  @override
  _CaptureCustomAlertDialogState createState() =>
      _CaptureCustomAlertDialogState();
}

class _CaptureCustomAlertDialogState extends State<CaptureCustomAlertDialog> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(26),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 14, right: 14, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  icon: CustomImage(imageSrc: AppImages.closeIcon),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              CustomText(
                text: 'Front Bumper',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                bottom: 10,
              ),
              CustomImage(imageSrc: AppImages.fontBumperImage),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        size: 16,
                        color: AppColors.n2,
                      ),
                      SizedBox(width: 6),
                      CustomText(text: "25,Feb 2025")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: AppColors.n2,
                      ),
                      SizedBox(width: 6),
                      CustomText(text: "10:30 pm")
                    ],
                  ),
                ],
              ),
              SizedBox(height: 14.h),
              Align(
                alignment: AlignmentDirectional.topStart,
                  child: CustomText(
                      text: "Add damage Manually",
                      fontWeight: FontWeight.w500,
                      fontSize: 14)),
              SizedBox(height: 14.h),
              CustomTextField(
                textEditingController: _searchController,
                hintText: "Type here.......",
                inputTextStyle: TextStyle(
                  color: Colors.black
                ),

                fillColor: Colors.white,

              ),
              SizedBox(height: 20.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                    onTap: () => Get.back(),
                    title: "Detect by AI",
                    height: 50.h,
                    fillColor: AppColors.white,
                    textColor: AppColors.appColors,
                    isBorder: true,
                    borderWidth: 1,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomGradientButton(
                    fontWeight: FontWeight.w700,
                      size: 18,
                      text: "Save",
                      onPressed: () {
                        Get.back();
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
