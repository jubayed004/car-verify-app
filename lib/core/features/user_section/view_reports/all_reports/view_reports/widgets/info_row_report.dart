import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class InfoRowReport extends StatelessWidget {
  final String title;
  final String value;
  final Color? color;

  const InfoRowReport({
    super.key,
    required this.title,
    required this.value,
    this.color,
  });

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: CustomText(
              text: title,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.start,

            ),
          ),
          Expanded(
            flex: 2,
            child: CustomText(
              text: value,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: color?? Colors.black,
              textAlign: TextAlign.start,

            ),

          ),
        ],
      ),
    );
  }
}