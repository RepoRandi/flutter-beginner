import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_state_manager_getx/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reactive State Manager'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeC.number}",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
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
