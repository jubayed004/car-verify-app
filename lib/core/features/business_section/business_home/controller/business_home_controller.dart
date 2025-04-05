import 'package:get/get.dart';

class BusinessHomeController extends GetxController{
  var selectedItem = ''.obs;
  final items = ['Sort by employe', 'Sort by vehicle',];
  var selectedTabIndex = 0.obs;
  var userName = 'John Doe'.obs;
  var ongoingInspections = <Map<String, dynamic>>[].obs;
  var completedInspections = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadMockData();
  }

  void loadMockData() {
    ongoingInspections.assignAll([
      {
        'image': 'assets/images/carverifyimage_1.png',
        'regNo': 'ABC123',
        'model': 'Corolla',
        'year': 2020,
        'brand': 'Toyota',
      },
      {
        'image': 'assets/images/carverifyimage_1.png',
        'regNo': 'XYZ456',
        'model': 'Civic',
        'year': 2019,
        'brand': 'Honda',
      },
    ]);

    completedInspections.assignAll([
      {
        'image': 'assets/images/carverifyimage_1.png',
        'regNo': '12545206',
        'model': 'Landcruiser',
        'year': 2022,
        'brand': 'Toyota',
      },
      {
        'image': 'assets/images/carverifyimage_1.png',
        'regNo': '12545206',
        'model': 'Corolla cross',
        'year': 2022,
        'brand': 'Toyota',
      },
    ]);
  }
}