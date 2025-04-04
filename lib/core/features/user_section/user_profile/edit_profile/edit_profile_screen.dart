import 'package:car_verify_app/core/components/custom_button/custom_gradient_button.dart';
import 'package:car_verify_app/core/components/custom_elevated_button/custom_elevated_button.dart';
import 'package:car_verify_app/core/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:car_verify_app/core/components/custom_text/custom_text.dart';
import 'package:car_verify_app/core/components/custom_text_field/custom_text_field.dart';
import 'package:car_verify_app/core/features/user_section/user_profile/controller/user_profile_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final UserProfileController userProfileController =
      Get.find<UserProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        titleName: "Edit Profile",
        leftIcon: true,
        colors: AppColors.appColors,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///=================> Name  Section <==============///

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "First Name",
                        bottom: 8,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.4,
                        child: CustomTextField(
                          fieldBorderColor: AppColors.textFiledBorderColor,
                          fieldBorderRadius: 10,
                          fillColor: Colors.white,
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Last Name",
                        bottom: 8,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.4,
                        child: CustomTextField(
                          fieldBorderColor: AppColors.textFiledBorderColor,
                          fieldBorderRadius: 10,
                          fillColor: Colors.white,
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              ///====================> Contact Section <=====================///
              CustomText(
                text: "Contact",
                top: 14,
                bottom: 8,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              CustomTextField(
                isDens: true,

                prefixIcon: CountryCodePicker(
                  onChanged: (code) {
                    userProfileController.selectedCountryCode.value =
                        code.dialCode!;
                  },
                  initialSelection: 'BD',
                  favorite: ['+880', 'US', 'IN'],
                  showFlag: true,
                  showDropDownButton: true,
                  alignLeft: false,
                ),
                fieldBorderColor: AppColors.textFiledBorderColor,
                fieldBorderRadius: 10,
                fillColor: Colors.white,
                keyboardType: TextInputType.phone,
              ),

              ///====================> Gender Section <=====================///
              CustomText(
                text: "Gender",
                top: 14,
                bottom: 8,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.textFiledBorderColor),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconEnabledColor: AppColors.appColors,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    dropdownColor: Colors.white,
                    value: userProfileController.selectedGender.value.isEmpty
                        ? null
                        : userProfileController.selectedGender.value,
                    hint: Text("Select Gender"),
                    isExpanded: true,
                    items: ["Male", "Female"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      userProfileController.selectedGender.value = value!;
                    },
                  ),
                ),
              ),

              ///====================> Date of Birth Section <=====================///
              CustomText(
                text: "Date of Birth",
                top: 14,
                bottom: 8,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              CustomTextField(
                prefixIcon: Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        await userProfileController.pickDate();
                      },
                      icon: Icon(
                        Icons.calendar_month,
                        color: AppColors.appColors,
                      ),
                    ),
                    CustomText(
                      text: userProfileController.selectedDate.value != null
                          ? DateFormat('dd/MM/yyyy')
                              .format(userProfileController.selectedDate.value!)
                          : "Today",
                      fontSize: 12.w,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor_01,
                    )
                  ],
                ),
                fieldBorderColor: AppColors.textFiledBorderColor,
                fieldBorderRadius: 10,
                fillColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(
                height:MediaQuery.of(context).size.height/4,
              ),
              CustomGradientButton(

                  text: "Save Changes",
                  onPressed: () {
                    Get.back();
                  }
              )
            ],
          );
        }),
      ),
    );
  }
}
