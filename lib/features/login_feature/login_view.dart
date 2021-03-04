import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_arch/features/login_feature/login_controller.dart';
import 'package:new_arch/routes/app_routes.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: Get.height / 2),
              MaterialButton(
                color: Colors.amber,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Get.offAndToNamed(
                    AppRoutes.HOME,
                    arguments: {'name': 'Janrey Dumaog'},
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Get.find<LoginController>().initLogin(),
      ),
    );
  }
}
