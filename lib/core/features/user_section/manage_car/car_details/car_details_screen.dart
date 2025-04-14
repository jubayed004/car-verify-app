import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_pop_up/custom_pop_up.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/features/user_section/manage_car/car_details/inner_widgets/all_car_reports_screen.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/inforow.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width / 1.3,
        child: FloatingActionButton(
          onPressed: () {
            Get.toNamed(AppRoutes.scanNowScreen);
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
              Get.toNamed(AppRoutes.editCarDetailsScreen);
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(
              imageSrc: AppImages.detailsCar,
              horizontal: 16,
              vertical: 20,
            ),
            const InfoRow(
                title: 'Registration no :', value: '12545206', isLink: true),
            const InfoRow(title: 'Model :', value: 'Land cruiser'),
            const InfoRow(title: 'Vehicle year :', value: '2022'),
            const InfoRow(title: 'Make :', value: 'Toyota'),
            CustomText(
              text: "All Reports",
              left: 16,
              top: 24,
              bottom: 14,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
            AllCarReportsScreen()
          ],
        ),
      ),
    );
  }
}
