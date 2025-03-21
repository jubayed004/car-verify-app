/*

import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GradientButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 200, // বাটনের প্রস্থ
        height: 50, // বাটনের উচ্চতা
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), // গোলাকার ডিজাইন
          gradient: LinearGradient(
            colors: [Color(0xFF007BFF), Color(0xFF4DA8FF)], // গ্রাডিয়েন্ট কালার
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}


*/
