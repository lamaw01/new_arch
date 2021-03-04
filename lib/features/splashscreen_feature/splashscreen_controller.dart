import 'package:get/get.dart';
import 'package:new_arch/routes/app_routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    autoNavigateToLogin();
    super.onInit();
  }

  void autoNavigateToLogin() {
    Future.delayed(
      Duration(seconds: 3),
      () => Get.offAndToNamed(
        AppRoutes.LOGIN,
      ),
    );
  }
}
