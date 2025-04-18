import 'package:get/get.dart';

class SubscriptionController extends GetxController {
  RxList<bool> selectedColors = [false, true].obs; // Track selected state for each card
  RxString subscriptionType = 'monthly'.obs; // Track the selected subscription type (monthly/yearly)

  // Toggle the selected state for a particular card
  void toggleCardColor(int index) {
    selectedColors[index] = !selectedColors[index]; // Toggle the state for the card
    update(); // Manually call update to refresh the UI
  }

  // Update the subscription type (monthly/yearly)
  void updateSubscriptionType(String value) {
    subscriptionType.value = value; // Update the subscription type
    update(); // Manually call update to refresh the UI
  }
  void updateSubscriptionTypeTow(String value) {
    subscriptionType.value = value; // Update the subscription type
    update(); // Manually call update to refresh the UI
  }
}
