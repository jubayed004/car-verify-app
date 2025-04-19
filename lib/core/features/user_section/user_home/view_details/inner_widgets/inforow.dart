
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isLink;

  const InfoRow({
    super.key,
    required this.title,
    required this.value,
    this.isLink = false,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: isLink ? Colors.blue[700] : Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 16.sp
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 6,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            value,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}