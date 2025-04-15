import 'package:car_verify_app/core/features/user_section/user_home/view_details/inner_widgets/icontext.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            IconText(icon: Icons.calendar_today, text: '25,Feb 2025'),
            SizedBox(width: 12),
            IconText(icon: Icons.access_time, text: '10:30 pm'),
            SizedBox(width: 12),
            IconText(icon: Icons.location_on, text: 'California,USA'),
          ],
        ),
      ),
    );
  }
}