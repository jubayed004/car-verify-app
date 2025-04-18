import 'dart:io';

import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/user_section/scan_now/capture_damage/inner_widgets/custom_alert_dialog.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessCaptureDamageScreen extends StatelessWidget {
  BusinessCaptureDamageScreen({super.key});
  final controller = GetControllers.instance.getUserProfileController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Capture Damage",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
        child: Obx(
              () =>controller.selectedImages.isEmpty? Center(child: Text("Empty Image"),):  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.file(
                      File(controller
                          .selectedImages[controller.selectedIndex.value]!
                          .path),
                      height: height - 170,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                    /*CustomImage(imageSrc: AppImages.captureDamageImage),*/
                    Positioned(
                        bottom: -100,
                        left: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CaptureCustomAlertDialog();
                              },
                            );
                          },
                          child:
                          CustomImage(imageSrc: AppImages.imageCaptureIcon),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              if (controller.selectedImages.isNotEmpty)
                SizedBox(
                  height: 110,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: controller.selectedImages.length,
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      itemBuilder: (c, i) => GestureDetector(
                        onTap: ()=>controller.onChangeIndex(i),
                        child: Container(
                          padding: EdgeInsets.all(1.5),
                          decoration: BoxDecoration(
                              border: Border.all(color: controller.selectedIndex.value==i?Colors.blueAccent:Colors.transparent)
                          ),
                          child: Stack(
                            children: [
                              Image.file(width: 120,
                                File(controller.selectedImages[i]!.path),fit: BoxFit.cover,),
                              Positioned(
                                  top: 0,
                                  right: 0,
                                  child: IconButton(
                                      onPressed: () =>
                                          controller.removeImage(i),
                                      icon: Icon(
                                        Icons.delete_forever_rounded,
                                        color: Colors.red,
                                      )))
                            ],
                          ),
                        ),
                      )),
                ),
              SizedBox(
                height: 24.h,
              ),
              CustomGradientButton(
                  fontWeight: FontWeight.w700,
                  size: 18,
                  text: "Save ",
                  onPressed: () {
                    Get.back();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
