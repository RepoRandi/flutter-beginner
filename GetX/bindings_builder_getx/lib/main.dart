import 'package:bindings_builder_getx/bindings/counter_bindings.dart';
import 'package:bindings_builder_getx/controllers/counter_controller.dart';
import 'package:bindings_builder_getx/pages/counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Home(),
      getPages: [
        GetPage(
          name: "/counter",
          page: () => Counter(),
          binding: CounterBindings(),
        ),
      ],
    );
  }
}
