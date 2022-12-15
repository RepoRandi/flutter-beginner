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
          body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
            ),
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.blueAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.teal,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.pink,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blueAccent,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blueAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.teal,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
            ],
          )),
    );
  }
}
