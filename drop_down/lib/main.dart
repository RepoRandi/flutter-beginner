import 'dart:math';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List data = [
    {
      "title": "Menu 1",
      "value": 1,
    },
    {
      "title": "Menu 2",
      "value": 2,
    },
    {
      "title": "Menu 3",
      "value": 3,
    }
  ];

  late int dataAwal;

  @override
  void initState() {
    super.initState();
    dataAwal = data[0]['value'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: DropdownButton<int>(
          value: dataAwal,
          items: data
              .map(
                (e) => DropdownMenuItem(
                  value: e['value'] as int,
                  child: Text("${e['title']}"),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              dataAwal = value!;
            });
          },
        ),
      ),
    );
  }
}
