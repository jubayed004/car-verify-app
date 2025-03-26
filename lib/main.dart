import 'package:car_verify_app/core/app_routes/app_routes.dart';
import 'package:car_verify_app/core/components/device_utils/device_utils.dart';
import 'package:car_verify_app/core/dependency/dependency_injection.dart';
import 'package:car_verify_app/core/features/user_section/user_home/controller/user_home_controller.dart';
import 'package:car_verify_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DeviceUtils.lockDevicePortrait();
  DependencyInjection di = DependencyInjection();
  di.dependencies();
  // SocketApi.init();
  Get.put(HomeController());
  // Get.put(NetworkController());

  runApp(const MyApp());
/*   runApp(DevicePreview(
     enabled: !kReleaseMode,
     builder: (context) =>
         //====================
    const MyApp(), // Wrap your app
   ));*/
  const MyApp();
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(392, 852),
      child: GetMaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.white,
            appBarTheme: const AppBarTheme(
              //surfaceTintColor: AppColors.brinkPink,
                toolbarHeight: 65,
                elevation: 0,
                centerTitle: true,
                backgroundColor: AppColors.white,
                iconTheme: IconThemeData(color: AppColors.white))),
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 200),
        initialRoute: AppRoutes.loginScreen,
        navigatorKey: Get.key,
        getPages: AppRoutes.routes,
      ),
    );
  }
}
