import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:new_arch/features/user_features/user_model.dart';

class UserApi {
  static var client = http.Client();
  static var urlUsers = Uri.parse('https://jsonplaceholder.typicode.com/users');

  static Future<List<User>> fetchUsers() async {
    try {
      var response = await client.get(urlUsers).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException("connection timeout.");
        },
      );
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return userFromJson(jsonString);
      } else {
        print('user error');
        return null;
      }
    } on TimeoutException catch (_) {
      print('response timeout');
      return null;
    } on SocketException catch (_) {
      print('socket error');
      return null;
    } catch (e) {
      print('err $e');
      return null;
    }
  }
}
