import 'package:get/get.dart';
import 'package:new_arch/features/user_features/user_binding.dart';
import 'package:new_arch/features/user_features/user_view.dart';
import 'package:new_arch/routes/app_routes.dart';
import 'package:new_arch/features/counter_feature/counter_binding.dart';
import 'package:new_arch/features/counter_feature/counter_view.dart';
import 'package:new_arch/features/home_feature/home_binding.dart';
import 'package:new_arch/features/home_feature/home_view.dart';
import 'package:new_arch/features/login_feature/login_binding.dart';
import 'package:new_arch/features/login_feature/login_view.dart';
import 'package:new_arch/features/splashscreen_feature/splashscreen_binding.dart';
import 'package:new_arch/features/splashscreen_feature/splashscreen_view.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.SPLASHSCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.COUNTER,
      page: () => CounterView(),
      binding: CounterBinding(),
    ),
    GetPage(
      name: AppRoutes.USER,
      page: () => UserView(),
      binding: UserBinding(),
    ),
  ];
}
