import 'package:get/get.dart';
import 'package:new_arch/features/login_feature/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
