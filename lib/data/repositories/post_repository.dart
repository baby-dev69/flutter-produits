import 'package:dio/dio.dart';

import '../models/product.dart';

class PostRepository {
  PostRepository();

  Future<List<Product>> getAllProducts() async {
    try {
      var response = await Dio().get('https://dummyjson.com/products');

      List<Product> productList = response.data["products"]
          .map<Product>((product) => Product.fromJson(product))
          .toList();
      int compteur = productList.length;
      return productList;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
