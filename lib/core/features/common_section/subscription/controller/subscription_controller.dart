import 'package:get/get.dart';

class SubscriptionController extends GetxController {
  RxInt selectedIndex = (-1).obs; // No card selected initially
  RxString subscriptionType = ''.obs; // Default subscription type

  void toggleCard(int index) {
    if (selectedIndex.value == index) {
      selectedIndex.value = -1; // Unselect if already selected
    } else {
      selectedIndex.value = index;
    }
  }
}
