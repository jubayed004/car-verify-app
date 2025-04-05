import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/features/business_section/business_home/inner_widgets/business_dashboard_section.dart';
import 'package:car_verify_app/core/features/business_section/business_home/inner_widgets/business_header_card.dart';
import 'package:car_verify_app/core/features/user_section/user_home/inner%20widgets/dashboard_section.dart';
import 'package:flutter/material.dart';

class BusinessHomeScreen extends StatelessWidget {
  const BusinessHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header Section
          BusinessHeaderCard(),
          // Dashboard Section
          Expanded(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: BusinessDashboardSection(),
            ),
          ),
      
        ],
      ),
    );
  }
}
