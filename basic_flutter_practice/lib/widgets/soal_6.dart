import 'dart:math';

import 'package:flutter/material.dart';

class SoalEnam extends StatelessWidget {
  const SoalEnam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: const FlutterLogo(),
        title: const Text('Flutter Demo'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              print('Klik more');
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
          child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250 / 2),
          color: Colors.blue,
        ),
        child: const Center(
          child: Text(
            'Hello',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      )),
    );
  }
}
