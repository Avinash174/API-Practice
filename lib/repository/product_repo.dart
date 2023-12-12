import 'dart:convert';

import 'package:api_practice/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductRepo {
  Future<ProductModel> fetchProductApi() async {
    String Url = 'https://dummyjson.com/products';
    final respose = await http.get(Uri.parse(Url));

    if (respose.statusCode == 200) {
      final body = jsonDecode(respose.body);
      return ProductModel.fromJson(body);
    }
    throw Exception('Error');
  }
}
