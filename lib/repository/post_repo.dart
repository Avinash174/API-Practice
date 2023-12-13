import 'dart:convert';

import 'package:api_practice/model/post_model.dart';
import 'package:api_practice/model/product_model.dart';
import 'package:http/http.dart' as http;

class PoroductRepo {
  Future<ProductModel> fetchPostApi() async {
    String Url = 'https://jsonplaceholder.org/posts';
    final respose = await http.get(Uri.parse(Url));

    if (respose.statusCode == 200) {
      final body = jsonDecode(respose.body);
      return ProductModel.fromJson(body);
    }
    throw Exception('Error');
  }
}

class PostRepo {
  Future<PostModel> fetchPostApi() async {
    String Url = 'https://jsonplaceholder.org/posts';
    final response = await http.get(Uri.parse(Url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return PostModel.fromJson(body);
    }
    throw Exception("Error");
  }
}
