import 'package:get/get.dart';

class HomeController extends GetxController {
  String name;

  @override
  void onInit() {
    super.onInit();
    name = Get.arguments['name'];
  }

  @override
  void onReady() {
    super.onReady();
    print('onReady');
  }
}
