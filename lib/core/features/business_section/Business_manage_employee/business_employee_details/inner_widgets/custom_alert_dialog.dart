import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/custom_button/custom_button.dart';
import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_image/custom_image.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:car_verify_app/core/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({super.key});

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10           ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.only(left: 14, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: CustomImage(imageSrc: AppImages.closeIcon),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          CustomText(
            text: 'Assign Car',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            bottom: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: CustomTextField(
              textEditingController: _searchController,
              hintText: "Search to select Car",
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.search),
            ),
          ),
          /* TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search to select Car',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),*/
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: CustomButton(
                    onTap: () => Get.back(),
                    title: "Cancel",
                    height: 50.h,
                    fillColor: AppColors.white,
                    textColor: AppColors.appColors,
                    isBorder: true,
                    borderWidth: 1,
                  ),
                ),
                SizedBox(
                  width: 12.h,
                ),
                Flexible(
                    child: CustomGradientButton(
                        text: "Submit",
                        onPressed: () {
                          Get.back();
                        })),
              ],
            ),
          )
        /*  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomGradientButton(
                text: "Cancel",
                onPressed: () {
                  // Handle submit action
                  Navigator.pop(context);
                },
                width: 150.w,

              ),
              ElevatedButton(
                onPressed: () {
                  // Handle submit action
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text('Submit'),
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}
