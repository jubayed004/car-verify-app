import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/controller/user_profile_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class EmployeeScanNowScreen extends StatelessWidget {
  EmployeeScanNowScreen({super.key});
  final controller = GetControllers.instance.getUserProfileController();
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
        width: MediaQuery
            .of(context)
            .size
            .width / 1.3,
        child: FloatingActionButton(
          onPressed: () {
            Get.offAllNamed(AppRoutes.employeeNavbar,arguments: 0);
          },
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
        padding: EdgeInsets.symmetric(vertical: 56, horizontal: 20),
        child: Center(
          child: SizedBox(
            width: 350.w,
            height: 580.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Car Image
                CustomImage(imageSrc: AppImages.scanNowCar),
                // Top Camera
                 Positioned(
                  top: 0,
                  child: _CameraButton(),
                ),

                // Bottom Camera
                 Positioned(
                  bottom: 0,
                  child: _CameraButton(),
                ),

                // Left Center
                 Positioned(
                  left: 0,
                  child: _CameraButton(),
                ),

                // Right Center
                 Positioned(
                  right: 0,
                  child: _CameraButton(),
                ),

                // Top Left
                 Positioned(
                  top: 100,
                  left: 0,

                  child: _CameraButton(),
                ),

                // Top Right
                 Positioned(
                  top: 100,
                  right: 0,
                  child: _CameraButton(),
                ),

                // Bottom Left
                Positioned(
                  bottom: 100,
                  left: 0,
                  child: _CameraButton(),
                ),
                // Bottom Right
                Positioned(
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
  _CameraButton();

  final controller = GetControllers.instance.getUserProfileController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
   // Close the dialogc
        await controller.pickImageOfSource(ImageSource.camera);

      },
      child: Container(
        width: 45.w,
        height: 45.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff4C9CE5), Color(0xff70C8CD)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(22.r),
          border: Border.all(width: 2.w, color: AppColors.textFieldColor),
        ),
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
          size: 24.sp,
        ),
      ),
    );
  }

/*  // Function to show the dialog for picking Camera or Gallery
  Future<void> _showPickImageDialog(BuildContext context) async {


    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pick Image Source'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Camera'),
                onTap: () async {

                },
              ),
              ListTile(
                title: Text('Gallery'),
                onTap: () async {
                  Navigator.pop(context); // Close the dialog
                  controller.pickImageOfSource(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }*/

}
