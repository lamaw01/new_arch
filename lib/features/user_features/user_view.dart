import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_arch/features/counter_feature/counter_controller.dart';
import 'package:new_arch/features/user_features/user_controller.dart';

class UserView extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Fetch Api Sample'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () => controller.isLoading.value
                    ? Center(
                        child: controller.timeout.value
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Server Timeout'),
                                  MaterialButton(
                                    color: Colors.orange,
                                    onPressed: () {
                                      controller.fetchUsers();
                                    },
                                    child: Text('refresh'),
                                  )
                                ],
                              )
                            : CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        itemCount: controller.userList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            margin:
                                EdgeInsets.only(top: 12, left: 12, right: 12),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${controller.userList[index].id}',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '${controller.userList[index].email}',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '${controller.userList[index].username}',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '${controller.userList[index].name}',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Get.find<CounterController>().increment(),
      ),
    );
  }
}
