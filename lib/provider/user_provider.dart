import 'dart:developer';

import 'package:api_practice/model/user_model.dart';
import 'package:api_practice/repository/user_repo.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> userModel = [];

  bool loading = true;
  final userRepo = UserRepo();

  Future<dynamic> getAllUser() async {
    final response = await userRepo.getAllUser();
    log(response.toString());
    loading = false;
    notifyListeners();
  }
}
