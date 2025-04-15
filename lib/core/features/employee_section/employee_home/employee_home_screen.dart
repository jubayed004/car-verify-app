import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/features/business_section/business_home/inner_widgets/business_dashboard_section.dart';
import 'package:car_verify_app/core/features/business_section/business_home/inner_widgets/business_header_card.dart';
import 'package:car_verify_app/core/features/employee_section/employee_home/inner_widgets/employee_dashboard_section.dart';
import 'package:car_verify_app/core/features/employee_section/employee_home/inner_widgets/employee_header_card.dart';
import 'package:car_verify_app/core/features/user_section/user_home/inner%20widgets/dashboard_section.dart';
import 'package:flutter/material.dart';

class EmployeeHomeScreen extends StatelessWidget {
  const EmployeeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header Section
          EmployeeHeaderCard(),
          // Dashboard Section
          Expanded(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: EmployeeDashboardSection(),
            ),
          ),

      
        ],
      ),
    );
  }
}
