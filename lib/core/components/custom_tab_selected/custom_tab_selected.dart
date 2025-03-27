/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabSelector extends StatelessWidget {
  final List<String> tabs;
 // final List<String> numberList;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  final Color selectedColor;
  final Color unselectedColor;
  final Color? textColor;
  final bool? isTextColorActive;
  final bool? isPadding;
  final double fontSize;

  const CustomTabSelector({
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
    //required this.numberList,
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
          ? const EdgeInsets.symmetric(horizontal: 2)
          : const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(tabs.length, (index) {
          return GestureDetector(
            onTap: () => onTabSelected(index),
            child: Container(
              padding: const EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(
                //color: AppColors.red,
                border: Border(
                  bottom: BorderSide(
                    color: selectedIndex == index
                        ? selectedColor
                        : Colors.transparent,
                    width: 3.0,
                  ),
                ),
              ),
              child: Column(
                children: [
Text(
                    numberList[index],
                    style: GoogleFonts.poppins(
                      color: selectedIndex == index
                          ? selectedColor
                          : isTextColorActive!
                          ? textColor
                          : unselectedColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  Text(
                    tabs[index],
                    style: GoogleFonts.poppins(
                      color: selectedIndex == index
                          ? selectedColor
                          : isTextColorActive!
                              ? textColor
                              : unselectedColor,
                      fontSize:fontSize,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
*/
