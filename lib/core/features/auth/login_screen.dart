import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Log in",color: Color(0xff0077CC),fontSize: 20,fontWeight: FontWeight.w700,)
      ),
      body:Column(
        children: [
          CustomImage(imageSrc: AppImages.carverifyimage),

        ],
      ),
    );
  }
}
