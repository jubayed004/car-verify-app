/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabSingleText extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  final Color selectedColor;
  final Color unselectedColor;
  final Color? textColor;
  final bool? isTextColorActive;
  final bool? isPadding;
  final double fontSize;


  const CustomTabSingleText({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
    required this.selectedColor,
    required this.unselectedColor,
    this.textColor,
    this.isTextColorActive = false,
    this.isPadding = true,
    this.fontSize=16
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0,
            color: unselectedColor,
          ),
        ),
      ),
      padding: isPadding!
          ? const EdgeInsets.symmetric(horizontal: 22)
          : const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(tabs.length, (index) {
          return GestureDetector(
            onTap: () => onTabSelected(index),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                //color: AppColors.red,
                border: Border(
                  bottom: BorderSide(
                    color: selectedIndex == index
                        ? selectedColor
                        : Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
              child: Text(
                tabs[index],
                style: GoogleFonts.poppins(
                  color: selectedIndex == index
                      ? selectedColor
                      : isTextColorActive!
                      ? textColor
                      : unselectedColor,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
*/
