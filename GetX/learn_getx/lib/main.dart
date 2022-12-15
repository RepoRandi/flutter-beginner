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

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
  decrement() => count--;
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${c.count.value < 0 ? 'No Minus' : c.count.value}",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: c.decrement,
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: c.increment,
                  child: const Text('+'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
