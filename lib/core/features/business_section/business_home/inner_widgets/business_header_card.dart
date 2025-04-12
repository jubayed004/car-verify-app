import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/features/my_test_screen.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_verify_app/core/features/user_section/user_home/controller/user_home_controller.dart';

class BusinessHeaderCard extends StatelessWidget {

  final controller = GetControllers.instance.getHomeController();
  BusinessHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 56, 20, 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF005BEA), Color(0xFF00C6FB)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomImage(
                imageSrc: AppImages.verifycar,
                height: 40,
              ),
              Row(
                children: [
                  IconButton(onPressed: (){
               Get.toNamed(AppRoutes.businessNotificationScreen);

                  }, icon: const Icon(Icons.notifications_none,color: Colors.white,size: 26,)),
                  const CircleAvatar(
                    radius: 25,
                    child: Center(
                      child: CustomImage(imageSrc: AppImages.maskGroup),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 24),
      CustomText(
                text: "Welcome to CarVerify \n Business!",
                textAlign: TextAlign.start,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              )

        ],
      ),
    );
  }
}
