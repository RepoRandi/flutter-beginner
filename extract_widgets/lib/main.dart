import 'package:extract_widgets/widgets/color_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
            child: Column(
          children: const [
            ColorBox(title: 'Box 1', color: Colors.red),
            ColorBox(title: 'Box 2', color: Colors.green),
            ColorBox(title: 'Box 3', color: Colors.lightBlueAccent),
          ],
        )),
      ),
    );
  }
}
