import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "Done",
              "Terimakasih",
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
              showProgressIndicator: true,
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.blueAccent,
              colorText: Colors.white,
            );
          },
          child: const Text('Click'),
        ),
      ),
    );
  }
}
