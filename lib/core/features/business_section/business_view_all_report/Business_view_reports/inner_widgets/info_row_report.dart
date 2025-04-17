import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:flutter/material.dart';

class BusinessInfoRowReport extends StatelessWidget {
  const BusinessInfoRowReport({
    super.key,
    required this.title,
    required this.value,
    this.color,
    this.size,
    this.fontWeight = FontWeight.w600,
  });
  final String title;
  final String value;
  final Size?  size;
  final Color? color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomText(
              text: title,
              fontSize: 16,
              fontWeight: fontWeight,
              textAlign: TextAlign.start,

            ),
          ),
          CustomText(
            text: value,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: color?? Colors.black,
            textAlign: TextAlign.start,

          ),
        ],
      ),
    );
  }
}