import 'package:api_practice/model/product_model.dart';
import 'package:api_practice/repository/product_repo.dart';

class ProductViewModel {
  final _repo = ProductRepo();

  Future<ProductModel> fetchProductAPi() async {
    final response = await _repo.fetchProductApi();
    return response;
  }
}
