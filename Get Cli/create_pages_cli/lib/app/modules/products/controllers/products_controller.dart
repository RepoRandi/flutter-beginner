import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "MacBook",
      "price": 25000000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "iPhone",
      "price": 23000000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Apple Watch Ultra",
      "price": 15000000,
    },
  ].obs;

  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "price": int.parse(price),
      });
      Get.back();
      Get.snackbar("Success", "Add Product $name");
    } else {
      Get.snackbar("Failed", "Field is not empty");
    }
  }
}
