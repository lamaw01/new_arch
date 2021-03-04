import 'package:get/get.dart';
import 'package:new_arch/features/user_features/user_controller.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
    print('put user binding..');
  }
}
