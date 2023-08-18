import 'package:get/get.dart';
import 'package:getx_counter_app/modals/api_modal.dart';

class CartController extends GetxController {

  RxList<ProductModal> cartItems = <ProductModal>[].obs;
  RxInt totalAmount = 0.obs;

  addToCart({required ProductModal products}) {
    cartItems.add(products);
  }
  removeProduct({required ProductModal products}) {
    cartItems.remove(products);
  }

}