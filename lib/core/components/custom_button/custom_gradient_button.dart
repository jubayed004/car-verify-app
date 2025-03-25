import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double hight;
  final double? size;
  final FontWeight? fontWeight;

  const CustomGradientButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.hight = 50,
        this.size,
        this.fontWeight,

      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: hight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [Color(0xFF0077CC), Color(0xFF0095FF)],
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
              fontWeight: fontWeight ?? FontWeight.w600 ,
              fontSize: size ?? 16,
            ),
          ),
        ),
      ),
    );
  }
}
