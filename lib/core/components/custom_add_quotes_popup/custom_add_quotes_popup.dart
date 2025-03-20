// // ignore_for_file: sized_box_for_whitespace
//
//
//
// import 'package:flutter/material.dart';
// import 'package:service_provider_app/core/components/custom_button/custom_button.dart';
// import 'package:service_provider_app/core/components/custom_text/custom_text.dart';
// import 'package:service_provider_app/core/components/custom_text_field/custom_text_field.dart';
// import 'package:service_provider_app/core/utils/app_colors/app_colors.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CustomAddQuotesPopup extends StatelessWidget {
//   const CustomAddQuotesPopup({
//     super.key,
//     required this.addQuotesController,
//     required this.cancelButton,
//     required this.submitButton,
//   });
//
//   final TextEditingController addQuotesController;
//   final VoidCallback cancelButton;
//   final VoidCallback submitButton;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         ///======================== Add Daliy Goal ===========================
//         const CustomText(
//           textAlign: TextAlign.start,
//           text: "",
//           fontSize: 20,
//           fontWeight: FontWeight.w700,
//          // color: AppColors.black_50,
//         ),
//         SizedBox(
//           height: 10.h,
//         ),
//
//         ///======================== Line Border ===========================
//         Container(
//           height: 1.h,
//           width: MediaQuery.of(context).size.width,
//           //color: AppColors.grey1,
//         ),
//         SizedBox(
//           height: 10.h,
//         ),
//
//         ///======================== Add New Goal ===========================
//         CustomTextField(
//           fieldBorderRadius: 10,
//           //fieldBorderColor: AppColors.grey1,
//           //fillColor: AppColors.white_50,
//           //hintText: AppStrings.addQuotes,
//           textEditingController: addQuotesController,
//         ),
//         SizedBox(
//           height: 10.h,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             ///======================== Cancel Button ===========================
//             CustomButton(
//               onTap: () {
//                 Navigator.pop(context);
//
//                 cancelButton();
//               },
//              // title: AppStrings.cancel,
//               isBorder: true,
//               height: 40.h,
//               width: 80.w,
//               fontSize: 14,
//               fillColor: AppColors.white,
//               borderRadius: 15,
//               borderWidth: 1,
//               //textColor: AppColors.black_50,
//             ),
//             SizedBox(
//               width: 10.w,
//             ),
//
//             ///======================== Submit Button ===========================
//             CustomButton(
//               onTap: () {
//                 submitButton();
//               },
//              // title: AppStrings.submit,
//               height: 40.h,
//               width: 80.w,
//               fontSize: 14,
//              //fillColor: AppColors.softlimegreen,
//               borderRadius: 15,
//               borderWidth: 2,
//               textColor: AppColors.white,
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
