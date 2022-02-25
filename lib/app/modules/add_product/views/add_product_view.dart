import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_cli/app/modules/products/controllers/products_controller.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  final productC = Get.find<ProductsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddProductView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "name",
                hintText: "Your Name..."),
          ),
          SizedBox(height: 20),
          TextField(
            controller: controller.priceC,
            autocorrect: false,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Price",
                hintText: "Price..."),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                productC.addProducts(
                    controller.nameC.text, controller.priceC.text);
              },
              child: Text("Submit")),
        ],
      ),
    );
  }
}
