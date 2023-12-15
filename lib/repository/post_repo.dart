import 'dart:convert';
import 'dart:developer';

import 'package:api_practice/model/post_model.dart';
import 'package:http/http.dart' as http;

class PostRepo {
  Future<PostModel> fetchPostApi() async {
    String Url = 'https://jsonplaceholder.org/posts';
    final response = await http.get(Uri.parse(Url));
    log('$response');
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return PostModel.fromJson(body);
    }
    throw Exception("Error");
  }
}
