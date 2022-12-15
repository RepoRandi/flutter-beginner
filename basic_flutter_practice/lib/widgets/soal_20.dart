import 'dart:math';

import 'package:flutter/material.dart';

class SoalDuaPuluh extends StatelessWidget {
  const SoalDuaPuluh({
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
      body: Stack(
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.teal[400],
          ),
          Container(
            width: 250,
            height: 250,
            color: Colors.teal[300],
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.teal[200],
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.teal[100],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.teal[50],
          )
        ],
      ),
    );
  }
}
