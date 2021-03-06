import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_cli/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView Testing'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go To Products >>"),
          onPressed: () {
            Get.toNamed(Routes.PRODUCTS);
          },
        ),
      ),
    );
  }
}
