import 'dart:io';
import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';


class UserProfileController extends GetxController {


  /// -------------------------------------------------------------------
  ///
  var selectedIndex = 0.obs;
  onChangeIndex(index)=> selectedIndex(index);

  final RxList<XFile?> selectedImages = RxList<XFile?>([]);

  /// add new Image
  pickImageOfSource(ImageSource source)async{
    final ImagePicker _picker = ImagePicker();
    XFile?pickedFile = await _picker.pickImage(source: source);
    selectedImages.add(pickedFile);
    Get.toNamed(AppRoutes.captureDamageScreen);
  }
  /// remove Image
  removeImage(index)=>selectedImages.removeAt(index);





  /// --------------------------------------------------------------------


  final Rx<File?> selectedImage = Rx<File?>(null);

  final ImagePicker _picker = ImagePicker();
  RxString uploadProfileImg = ''.obs;




  // Function to pick the image either from the camera or gallery
  Future<void> pickImage({required bool fromCamera}) async {
    final ImagePicker _picker = ImagePicker();
    // Pick image based on the source (camera or gallery)
    XFile? pickedFile;
    if (fromCamera) {
      pickedFile = await _picker.pickImage(source: ImageSource.camera);
    } else {
      pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    }
    if (pickedFile != null) {
   uploadProfileImg.value = pickedFile.path; // Store the picked image path
      // Check if an image is selected, then navigate to the next screen
      if (uploadProfileImg.value.isNotEmpty) {
        Get.toNamed(AppRoutes.captureDamageScreen);
      }
    } else {
      Get.toNamed(AppRoutes.captureDamageScreen);
      debugPrint("No image selected.");
    }
  }

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
