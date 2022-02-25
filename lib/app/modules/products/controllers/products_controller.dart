import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "sepatu",
      "price": 10000,
    },
    {"id": DateTime.now().toIso8601String(), "name": "sendal", "price": 20000},
    {"id": DateTime.now().toIso8601String(), "name": "baju", "price": 30000},
  ].obs;

  void addProducts(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "price": int.parse(price),
      });
      Get.back();
    }
  }
}
