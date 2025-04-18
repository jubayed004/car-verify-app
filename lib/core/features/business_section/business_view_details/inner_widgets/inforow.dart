
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessInfoRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isLink;

  const BusinessInfoRow({
    super.key,
    required this.title,
    required this.value,
    this.isLink = false,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(

      overflow: TextOverflow.ellipsis,
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
            flex: 8,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              textAlign: TextAlign.end,
              value,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}