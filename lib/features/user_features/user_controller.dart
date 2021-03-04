import 'package:get/get.dart';
import 'package:new_arch/features/user_features/user_api.dart';
import 'package:new_arch/features/user_features/user_model.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var timeout = false.obs;
  var userList = <User>[].obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void fetchUsers() async {
    try {
      var users = await UserApi.fetchUsers();
      if (users != null) {
        userList.assignAll(users);
        isLoading(false);
      } else {
        timeout(true);
      }
    } catch (e) {
      print('err $e');
    }
  }
}
