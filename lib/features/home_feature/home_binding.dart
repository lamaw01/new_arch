import 'package:get/get.dart';
import 'package:new_arch/features/home_feature/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    print('put home binding..');
  }
}
