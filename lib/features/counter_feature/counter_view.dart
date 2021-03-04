import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_arch/features/counter_feature/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter GetView Example'),
      ),
      body: SafeArea(
        child: Center(
          child: Obx(() => Text('Number of clicks : ${controller.count}')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}
