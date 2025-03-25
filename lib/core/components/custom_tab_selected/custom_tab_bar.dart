import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  final double fontSize;

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
    this.fontSize = 16, // Default font size
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: isPadding == true
            ? const EdgeInsets.symmetric(horizontal: 0)
            : const EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: unselectedColor,
            ),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(tabs.length, (index) {
              return GestureDetector(
                onTap: () => onTabSelected(index),
                child: Container(
                  width: MediaQuery.of(context).size.width / tabs.length,
                  padding: const EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
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
                  child: Center(
                    child: Text(
                      tabs[index],
                      style: GoogleFonts.poppins(
                        fontSize: fontSize.sp,
                        fontWeight: FontWeight.w500,
                        color: selectedIndex == index
                            ? selectedColor
                            : isTextColorActive == true
                            ? textColor
                            : unselectedColor,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
