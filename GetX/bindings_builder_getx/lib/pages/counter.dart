import 'package:bindings_builder_getx/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  Counter({super.key});

  CounterController counterC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("${counterC.data}")),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterC.decrement();
                },
                child: const Text('-'),
              ),
              ElevatedButton(
                onPressed: () {
                  counterC.increment();
                },
                child: const Text('+'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
