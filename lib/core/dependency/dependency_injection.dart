
import 'package:car_verify_app/core/features/user_section/user_home/controller/user_home_controller.dart';
import 'package:car_verify_app/core/features/user_section/user_home/view_details/controller/view_details_controller.dart';
import 'package:get/get.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(),fenix: true);
    Get.lazyPut<ViewDetailsController>(() => ViewDetailsController(),fenix: true);
  }
}
