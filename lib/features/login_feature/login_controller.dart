import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void initLogin() {
    Get.snackbar(
      'Notice',
      'Login Controller Initialized',
      backgroundColor: Colors.white,
      borderColor: Colors.black,
      borderWidth: 1,
      margin: EdgeInsets.all(8),
      borderRadius: 0,
      overlayBlur: 0,
      barBlur: 0,
    );
  }
}
