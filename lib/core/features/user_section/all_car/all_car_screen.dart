import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'inner_widgets/car_verify_card.dart';

class AllCarScreen extends StatelessWidget {
  const AllCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomRoyelAppbar(
        titleName: "All Cars",
        colors: AppColors.appColors,
        leftIcon: true,
       leftOnPressed: (){
          Get.offAllNamed(AppRoutes.userNavbar);
       },
      actions: [
        IconButton(
            onPressed: (){
              Get.toNamed(AppRoutes.searchCarScreen);
            },
            icon: Icon(Icons.search,color: AppColors.appColors,))
      ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          children:List.generate(
                30, // Number of cars you want to display
                (index) => CarVerifyCard(),
          ),
        ),
      ),
    );
  }
}
