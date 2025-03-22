import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AuthController extends GetxController {
  RxString chooseUser = "".obs;
  RxString selectedCountryCode = "+880".obs;
  RxString selectedGender = "".obs;






  ///=========== Date Time GetX Controller Code ===========//

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
