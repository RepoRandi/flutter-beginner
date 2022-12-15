import 'package:create_pages_cli/app/modules/products/controllers/products_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  AddProductView({Key? key}) : super(key: key);

  final productC = Get.find<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddProductView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            decoration: const InputDecoration(
              labelText: "Product Name",
            ),
          ),
          TextField(
            controller: controller.priceC,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Product Price",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              productC.addProduct(
                  controller.nameC.text, controller.priceC.text);
            },
            child: const Text("Add Product"),
          )
        ],
      ),
    );
  }
}
