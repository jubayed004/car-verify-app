import 'package:car_verify_app/core/components/custom_button/custom_button.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class CustomPopUp {
 static void showPopUp({
    required BuildContext context,
    required String title,
    required String discription,
    required String leftTextButton,
    required String rightTextButton,
    required Function() leftOnTap,
    required Function() rightOnTap,
    bool showRowButton = true,
    bool showColumnButton = false,
  }) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppColors.white,
        insetPadding: EdgeInsets.all(8),
        contentPadding: EdgeInsets.all(8),
        content: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: CustomShowDialog(
            textColor: AppColors.red,
            title: title,
            discription: discription,
            showRowButton: showRowButton,
            showColumnButton: showColumnButton,
            showCloseButton: true,
            leftOnTap: leftOnTap,
            rightOnTap: rightOnTap,
          ),
        ),
      ),
    );
  }
}

///=================== ignore_for_file: sort_child_properties_last ========================///

class CustomShowDialog extends StatelessWidget {
  final String? title;
  final String? discription;
  final String? leftTextButton;
  final String? rightTextButton;
  final Function()? leftOnTap;
  final Function()? rightOnTap;
  final bool? showRowButton;
  final bool? showRowButtonTwo;
  final bool? showColumnButton;
  final bool? showCloseButton;
  final Color? textColor;
  final Color? discriptionTextColor;
  const CustomShowDialog(
      {super.key,
      required this.title,
      required this.discription,
      this.leftOnTap,
      this.rightOnTap,
      this.leftTextButton,
      this.rightTextButton,
      this.showRowButton = false,
      this.showColumnButton = false,
      this.textColor = Colors.black,
      this.showCloseButton = true,
        this.discriptionTextColor = AppColors.appColors,
        this.showRowButtonTwo
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       // color: AppColors.green,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.only(bottom: 10.0, top: 10.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          showCloseButton == true
              ? Padding(
                  padding: EdgeInsets.only(right: 10.0, top: 0.h),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Icon(
                            Icons.close,
                            color: textColor ?? AppColors.black,
                          ))),
                )
              : SizedBox(),
          CustomText(
            text: "$title",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: textColor ?? AppColors.black_80,
            bottom: 12.h,
            maxLines: 3,
          ),
          CustomText(
            text: "$discription",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: discriptionTextColor ?? AppColors.black_80,
            bottom: 18.h,
          ),
          showRowButton == true
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: CustomButton(
                          onTap: leftOnTap ?? () => Navigator.of(context).pop(),
                          title: leftTextButton ?? "Yes",
                          height: 50.h,
                          textColor: AppColors.appWhite ,
                          fillColor: AppColors.servicePrimary,
                          // fillColor:  widget.textColor ?? AppColors.black_80,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Flexible(
                        child: CustomButton(
                          onTap:
                              rightOnTap ?? () => Navigator.of(context).pop(),
                          title: rightTextButton ?? "No",
                          height: 50.h,
                          fillColor: AppColors.white,
                          textColor: AppColors.servicePrimary,
                          isBorder: true,
                          borderWidth: 1,
                        ),
                      )
                    ],
                  ),
                )
              : SizedBox(),
          showRowButtonTwo == true
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: CustomButton(
                          onTap:
                          rightOnTap ?? () => Navigator.of(context).pop(),
                          title: rightTextButton ?? "Cancel",
                          height: 50.h,
                          fillColor: AppColors.white,
                          textColor: AppColors.servicePrimary,
                          isBorder: true,
                          borderWidth: 1,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Flexible(
                        child: CustomButton(
                          onTap: leftOnTap ?? () => Navigator.of(context).pop(),
                          title: leftTextButton ?? "Delete Account",
                          height: 50.h,
                          textColor: AppColors.appWhite ,
                          fillColor: AppColors.servicePrimary,
                          // fillColor:  widget.textColor ?? AppColors.black_80,
                        ),
                      ),

                    ],
                  ),
                )
              : SizedBox(),
          showColumnButton == true
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      CustomButton(
                        onTap: leftOnTap ?? () => Navigator.of(context).pop(),
                        title: leftTextButton ?? "Yes",
                        height: 45.h,
                        fillColor: AppColors.servicePrimary,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      CustomButton(
                        onTap: rightOnTap ?? () => Navigator.of(context).pop(),
                        title: rightTextButton ?? "No",
                        height: 45.h,
                        fillColor: AppColors.white,
                        textColor: AppColors.servicePrimary,
                        isBorder: true,
                        borderWidth: 1,
                      )
                    ],
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
