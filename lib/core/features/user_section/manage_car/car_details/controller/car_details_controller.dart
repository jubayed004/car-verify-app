import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CarDetailsController extends GetxController{
  final Rx<File?> selectedImage = Rx<File?>(null);

  final ImagePicker _picker = ImagePicker();
  RxString uploadCarDetailsImg = ''.obs;

  /// add new Image

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



}