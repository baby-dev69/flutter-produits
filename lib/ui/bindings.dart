import 'package:finalproject/data/repositories/post_repository.dart';
import 'package:get/get.dart';

import 'controller_product.dart';

class ProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerProducts(
          postRepository: PostRepository(),
        ));
  }
}
