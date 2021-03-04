import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_arch/features/home_feature/home_controller.dart';
import 'package:new_arch/routes/app_routes.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello! ${controller.name}'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBox(height: Get.height * 0.10),
              MaterialButton(
                color: Colors.amber,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Go to user Api',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
                onPressed: () => Get.toNamed(
                  AppRoutes.USER,
                ),
              ),
              // SizedBox(height: Get.height * 0.10),
              MaterialButton(
                color: Colors.amber,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Text(
                      'Go to counter',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                onPressed: () => Get.toNamed(
                  AppRoutes.COUNTER,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
