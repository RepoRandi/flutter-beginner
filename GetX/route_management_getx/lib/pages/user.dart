import 'package:flutter/material.dart';
import 'package:get/get.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'User Page',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/option");
              },
              child: const Text('Option'),
            )
          ],
        ),
      ),
    );
  }
}
