import 'dart:io';

import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_netwrok_image/custom_network_image.dart';
import 'package:car_verify_app/core/components/custom_pop_up/custom_pop_up.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/business_section/business_manage_fleet/business_car_details/inner_widgets/business_all_car_reports_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/inforow.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BusinessCarDetailsScreen extends StatelessWidget {
   BusinessCarDetailsScreen({super.key});
 final controller = GetControllers.instance.getCarDetailsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width / 1.3,
        child: FloatingActionButton(
          onPressed: () {
            Get.toNamed(AppRoutes.businessScanNowScreen);
          },
          backgroundColor: AppColors.appColors,
          child: CustomText(
            text: "Scan Now",
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      appBar: CustomRoyelAppbar(
        titleName: "Car details ",
        leftIcon: true,
        colors: AppColors.appColors,
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.businessEditCarDetailsScreen);
            },
            child: CustomImage(
              imageSrc: AppImages.editIcon,
              sizeWidth: 24,
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height/4,
                      child: CustomShowDialog(
                        title: "Are you sure !!  ",
                        discription: "Do you want to  delete this Car ?",
                        textColor: AppColors.red,
                        showRowButton: true,
                      ),
                    );
                  });
            },
            child: CustomImage(
              imageSrc: AppImages.deletedIcon,
              sizeWidth: 24,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Obx((){
                  final image = controller.selectedImage.value?.path;
                  return image != null && image.isNotEmpty
                      ? ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.file(
                      File(controller.selectedImage.value?.path?? ""),
                      height: 156.h,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,),
                  )
                      :CustomNetworkImage(
                      imageUrl: "https://img.freepik.com/free-psd/red-isolated-car_23-2151852884.jpg",
                      height: 156.h,
                      width: MediaQuery.of(context).size.width
                  );
                }),
                Positioned(
                  bottom: 5,
                  right: 0,
                  child: GestureDetector(
                    onTap: controller.pickImageFromCamera,
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffC2C2C2,),width: 1.w),
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child:  Icon(Icons.camera_alt_outlined, size: 18.sp, color: AppColors.appColors),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            const InfoRow(
                title: 'Registration no :', value: '12545206', isLink: true),
            const InfoRow(title: 'Model :', value: 'Land cruiser'),
            const InfoRow(title: 'Vehicle year :', value: '2022'),
            const InfoRow(title: 'Make :', value: 'Toyota'),
            const InfoRow(title: 'Assigned employee :', value: 'Mr. Jubayed'),
            CustomText(
              text: "All Reports",
              left: 16,
              top: 24,
              bottom: 14,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
            BusinessAllCarReportsScreen()
          ],
        ),
      ),
    );
  }
}
