import 'dart:math';

import 'package:extract_widgets/widgets/color_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<Map<String, dynamic>> data = List.generate(
    10,
    (index) => {
      'title': 'Color Box ${index + 1}',
      'color': Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      )
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Center(
          child: ListView(
            children: data
                .map((item) =>
                    ColorBox(title: item['title'], color: item['color']))
                .toList(),
          ),
        ),
      ),
    );
  }
}
