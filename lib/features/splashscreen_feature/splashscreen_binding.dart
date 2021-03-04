import 'package:get/get.dart';
import 'package:new_arch/features/splashscreen_feature/splashscreen_controller.dart';

class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashScreenController>(SplashScreenController());
    print('put splashscreen binding..');
  }
}
