import 'package:flutter/material.dart';

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final Color? color;
  const PrimaryContainer({
    super.key,
    this.radius,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF8F9F9),
        borderRadius: BorderRadius.circular(radius ?? 30),
      ),
      child: child,
    );
  }
}