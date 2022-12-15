import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple State Manager'),
        actions: [
          IconButton(
            onPressed: () {
              homeC.refreshScreen();
            },
            icon: Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                "${controller.number}",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          homeC.add();
        },
        child: Icon(
          Icons.add_circle_outline,
        ),
      ),
    );
  }
}
