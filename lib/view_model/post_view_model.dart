import 'dart:developer';

import 'package:api_practice/model/post_model.dart';
import 'package:api_practice/repository/post_repo.dart';

class PostViewModel {
  final _repo = PostRepo();
  Future<PostModel> fetchPostApi() async {
    final response = await _repo.fetchPostApi();
    log(response.toString());
    return response;
  }
}
