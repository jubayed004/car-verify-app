// ignore_for_file: prefer_const_constructors
import 'package:car_verify_app/core/features/auth/login_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  ///===========================Authentication==========================
  static const String loginScreen = "/LoginScreen";

  static List<GetPage> routes = [
    ///===========================Authentication==========================
    GetPage(name: loginScreen, page: () => LoginScreen()),

  ];
}
