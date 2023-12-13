import 'dart:developer';

import 'package:api_practice/model/post_model.dart';
import 'package:api_practice/model/product_model.dart';

class ProductViewModel {
  final _repo = ProductViewModel();

  Future<ProductModel> fetchProductAPi() async {
    final response = await _repo.fetchProductAPi();
    log(response.toString());
    return response;
  }
}

class PostViewModel {
  final _repo = PostViewModel();
  Future<PostModel> fetchPostApi() async {
    final response = await _repo.fetchPostApi();
    return response;
  }
}
