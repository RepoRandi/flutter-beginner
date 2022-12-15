import 'package:get/get.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  Future<User?> getUser(int id) async {
    final response = await get('https://reqres.in/api/users/$id');
    return User.fromJson(response.body["data"]);
  }

  Future<List<User>?> getAllUsers() async {
    final response = await get("https://reqres.in/api/users?page=2");
    return User.fromJsonList(response.body["data"]);
  }
}
