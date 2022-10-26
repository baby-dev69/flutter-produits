import 'dart:html';

import 'package:dio/dio.dart';
import 'package:finalproject/data/repositories/post_repository.dart';
import 'package:get/get.dart';

import '../data/models/product.dart';

class ControllerProducts extends GetxController with StateMixin {
  PostRepository postRepository;
  ControllerProducts({required this.postRepository});

  List<Product> productList = [];

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    productList = await postRepository.getAllProducts();

    change(null, status: RxStatus.success());
    super.onInit();
  }
}
