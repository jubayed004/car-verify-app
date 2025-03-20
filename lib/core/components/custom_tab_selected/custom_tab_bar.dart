/*
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  final Color selectedColor;
  final Color unselectedColor;
  final Color? textColor;
  final bool? isTextColorActive;
  final bool? isPadding;

  const CustomTabBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
    required this.selectedColor,
    required this.unselectedColor,
    this.textColor,
    this.isTextColorActive = false,
    this.isPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Makes tabs scrollable if they overflow
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: unselectedColor,
            ),
          ),
        ),
        padding: isPadding!
            ? const EdgeInsets.symmetric(horizontal: 0)
            : const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // Prevent forced spacing
          children: List.generate(tabs.length, (index) {
            return GestureDetector(
              onTap: () => onTabSelected(index),
              child: Expanded( // Ensures each tab shares available space equally
                child: Container(
                  margin: EdgeInsets.zero,
                  alignment: Alignment.center,
                  width: MediaQuery.sizeOf(context).width / tabs.length,
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: selectedIndex == index
                            ? selectedColor
                            : const Color(0xff6A6D76),
                        width: 2.0,
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
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}*/
