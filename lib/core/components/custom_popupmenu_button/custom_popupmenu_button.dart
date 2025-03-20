/*
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';

import '../custom_text/custom_text.dart';

class CustomPopupmenuButton extends StatelessWidget {
  const CustomPopupmenuButton({
    super.key,
    required this.onChanged,
    this.icons,
    required this.items,
  });

  final List<String> items;
  final ValueChanged<String> onChanged;
  final IconData? icons;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: AppColors.white,
      icon: Icon(
        icons ?? Icons.arrow_drop_down,
        color: AppColors.appColors,
      ),
      itemBuilder: (context) => List.generate(items.length, (index) {
        return PopupMenuItem(
          onTap: () => onChanged(items[index]),
          child: CustomText(
            textAlign: TextAlign.center,
            text: items[index],
            color: AppColors.black,
            fontSize: 14.w,
            fontWeight: FontWeight.w300,
          ),
        );
      }),
    );
  }
}
*/
