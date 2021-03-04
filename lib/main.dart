import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_arch/routes/app_pages.dart';
import 'package:new_arch/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: SplashScreenBinding(),
      title: 'Flutter Demo',
      initialRoute: AppRoutes.SPLASHSCREEN,
      getPages: AppPages.list,
    );
  }
}
