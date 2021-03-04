import 'package:get/get.dart';
import 'package:new_arch/features/counter_feature/counter_controller.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CounterController>(CounterController(), permanent: true);
    print('put counter binding..');
  }
}
