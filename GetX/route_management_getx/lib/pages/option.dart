import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Option extends StatelessWidget {
  const Option({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Option'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Option Page',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/home");
              },
              child: const Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
