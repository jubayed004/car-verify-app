
import 'package:flutter/material.dart';

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
      color: isLink ? Colors.blue[700] : Colors.black,
      fontWeight: FontWeight.w500,
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
          Expanded(
            flex: 2,
            child: Text(
              value,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}