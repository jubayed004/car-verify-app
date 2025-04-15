import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';


class EmployeeProfileController extends GetxController {
  final Rx<File?> selectedImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImage.value = File(image.path);
    }
  }

  Future<void> pickImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      selectedImage.value = File(image.path);
    }
  }



  ///=========== Date Time GetX Controller Code ===========//


  RxString selectedCountryCode = "+880".obs;
  RxString selectedGender = "".obs;


// Observable to track the selected DateTime
  final Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
// Method to format the DateTime for display
  String get formattedDate {
    if (selectedDate.value != null) {
      return DateFormat('dd-MM-yyyy').format(selectedDate.value!);
    }
    return 'No Date Selected';
  }

// Function to pick a date
  Future<void> pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!, // Use GetX context
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      selectedDate.value = pickedDate;
    }
  }

}
