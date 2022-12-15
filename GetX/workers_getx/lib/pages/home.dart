import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workers_getx/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeC = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Workers GetX'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Obx(() => Text(
                    "${homeC.dataPantau}",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => homeC.changeData(),
                decoration: InputDecoration(
                  labelText: 'Data',
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
