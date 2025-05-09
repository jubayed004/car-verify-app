import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/dependency/get_controllers.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:car_verify_app/core/features/user_section/user_home/controller/user_home_controller.dart';

class HeaderCard extends StatelessWidget {
  final controller = GetControllers.instance.getHomeController();

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
            children: const [
              CustomImage(imageSrc: AppImages.verifycar,height: 40,),
              CircleAvatar(
                radius: 25,
                child: Center(child: CustomImage(imageSrc: AppImages.maskGroup),),
              )
            ],
          ),
          const SizedBox(height: 24),
          Obx(() => Text(
            'Welcome, ${controller.userName.value}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          )),
          const SizedBox(height: 8),
          const Text(
            "Ready to document your vehicle's condition?",
            style: TextStyle(fontSize: 14, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}