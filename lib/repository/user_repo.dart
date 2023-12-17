import 'dart:convert';

import 'package:api_practice/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserRepo {
  Future<UserModel> getAllUser() async {
    String Url = 'https://reqres.in/api/users?page=2';
    final response = await http.get(Uri.parse(Url));
    if (response == 200) {
      final body = UserModel.fromJson(jsonDecode(response.body));
    }
    return UserModel();
  }
}
